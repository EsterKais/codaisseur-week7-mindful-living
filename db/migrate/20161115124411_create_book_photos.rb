class CreateBookPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :book_photos do |t|
      t.string :book_image
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
