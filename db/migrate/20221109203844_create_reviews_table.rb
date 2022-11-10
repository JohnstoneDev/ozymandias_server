class CreateReviewsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.string  :book_title
      t.string  :comment 
      t.timestamps
    end 
  end
end
