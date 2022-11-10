# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_09_203844) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "author_id"
    t.string "author_name"
    t.string "publisher"
    t.string "published_date"
    t.string "image_one"
    t.string "image_two"
    t.integer "page_count"
    t.string "review"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "book_id"
    t.string "book_title"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
