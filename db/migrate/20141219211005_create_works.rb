class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :book_id, index: true
      t.references :author_id, index: true

      t.timestamps
    end
  end
end
