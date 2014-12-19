class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :author_first_name
      t.string :author_last_name
      t.date :author_birth_date
      t.string :author_website

      t.timestamps
    end
  end
end
