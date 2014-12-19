class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.integer :book_length
      t.binary :book_summary
      t.date :book_date_finished
      t.references :genre_id, index: true
      t.references :series_id, index: true
      t.references :course_id, index: true

      t.timestamps
    end
  end
end
