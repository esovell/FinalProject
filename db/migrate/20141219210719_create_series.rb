class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :series_title
      t.binary :series_description
      t.integer :series_book_count
      t.integer :series_finished

      t.timestamps
    end
  end
end
