class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :genre_name
      t.binary :genre_description

      t.timestamps
    end
  end
end
