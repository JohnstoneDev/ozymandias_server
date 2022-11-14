puts "Clearing Database"
Author.delete_all
Book.delete_all
Review.delete_all

puts "Finished Clean"

puts "Seeding Data"

kreft = Author.create(name: 'Peter Kreeft')
nietzsche = Author.create(name: "Friedrich Wilhelm Nietzsche")

philosophy_of_jesus = Book.create(
    title: "The Philosophy of Jesus",
    author_id: kreft.id,
    author_name: kreft.name,
    publisher: "St Augustine PressInc",
    published_date: "2007",
    page_count: 162,
    image_one: "http://books.google.com/books/content?id=rYldAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
    image_two: "http://books.google.com/books/content?id=rYldAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    review: ""
)

basic_writings = Book.create(
    title: "Basic Writings of Nietzsche",
    author_id: nietzsche.id,
    author_name: nietzsche.name,
    publisher: "Random House LLC",
    published_date: "2000",
    page_count: 862,
    image_one: "http://books.google.com/books/content?id=CNQDHDO8fwwC&printsec=frontcover&img=1&zoom=5&source=gbs_api",
    image_two: "http://books.google.com/books/content?id=CNQDHDO8fwwC&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    review: ""
)


good_book = Review.create(
    book_id: philosophy_of_jesus.id,
    book_title: philosophy_of_jesus.title,
    comment: "This is a good book",
)


okay_book = Review.create(
    book_id: basic_writings.id,
    book_title: basic_writings.title,
    comment: "Okay Book!"
)

puts "Done Seeding Data"