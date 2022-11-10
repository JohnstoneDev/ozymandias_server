class ApplicationController < Sinatra::Base 
    set :default_content_type, 'application/json'

    get '/' do 
        { message: "Ozymandias Book Reviews Server"}.to_json
    end 
    
    get '/authors' do 
        authors = Author.all
        authors.each.to_json(include: :books)
    end  

    get '/books' do 
        books = Book.all.order(:author_name)
        books.each.to_json(include: :reviews )
    end 

    get '/reviews' do 
        reviews = Review.all
        reviews.to_json
    end 

    get '/books/:id' do 
        book = Book.find(params[:id])
        book.to_json
    end 

    post '/books' do 
        book_author = Author.find_or_create_by(name: params[:author])
        
        book = Book.create(
            title: params[:title],
            author_id: book_author.id,
            author_name: book_author.name,
            image_one: params[:image_one],
            page_count: params[:page_count],
            image_two: params[:image_two],
            publisher: params[:publisher],
            published_date: params[:published_date],
            review: params[:review]
        )

        Review.create(
            book_id: book.id,
            book_title: book.title,
            comment: book.review
        )

        book.to_json
    end 

    delete '/books/:id' do 
        book = Book.find(params[:id])
        book_review = Review.find_by(book_id: params[:id])

        book_author = Author.find_by(name: book.author_name)
        book_author.books.count == 0 ? book_author.destroy : book_author

        book_review.destroy
        book.destroy.to_json
    end 

    patch '/books/:id' do
        book = Book.find(params[:id])
        
        book.update(review: params[:review])
        book_review = Review.find_by(book_id: params[:id])

        book_review.update(comment: params[:review])

        book.to_json
    end 


    patch '/reviews/:id' do 
        review = Review.find(params[:id])
        review.update(comment: params[:comment])

        book = Book.find(review.book_id)

        book.update(review: params[:comment])
        
        review.to_json
    end 

    delete '/books' do 
        books = Book.destroy_all
        authors = Author.destroy_all 
        reviews = Review.destroy_all

        { message: "Deleted All Books "}.to_json
    end 

end 