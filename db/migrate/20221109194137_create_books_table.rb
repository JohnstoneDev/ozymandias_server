class CreateBooksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t| 
      t.string  :title
      t.integer :author_id
      t.string  :author_name
      t.string  :publisher
      t.string  :published_date 
      t.string  :image_one 
      t.string  :image_two 
      t.integer :page_count 
      t.string  :review 
    end 
  end
end
