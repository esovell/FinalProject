# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141219211005) do

  create_table "authors", force: true do |t|
    t.string   "author_first_name"
    t.string   "author_last_name"
    t.date     "author_birth_date"
    t.string   "author_website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "book_title"
    t.integer  "book_length"
    t.binary   "book_summary"
    t.date     "book_date_finished"
    t.integer  "genre_id_id"
    t.integer  "series_id_id"
    t.integer  "course_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["course_id_id"], name: "index_books_on_course_id_id"
  add_index "books", ["genre_id_id"], name: "index_books_on_genre_id_id"
  add_index "books", ["series_id_id"], name: "index_books_on_series_id_id"

  create_table "courses", force: true do |t|
    t.string   "course_name"
    t.binary   "course_description"
    t.integer  "course_semester"
    t.string   "course_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "genre_name"
    t.binary   "genre_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.string   "series_title"
    t.binary   "series_description"
    t.integer  "series_book_count"
    t.integer  "series_finished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.integer  "book_id_id"
    t.integer  "author_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["author_id_id"], name: "index_works_on_author_id_id"
  add_index "works", ["book_id_id"], name: "index_works_on_book_id_id"

end
