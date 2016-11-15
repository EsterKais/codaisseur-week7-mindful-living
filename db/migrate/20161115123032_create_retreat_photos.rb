class CreateRetreatPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :retreat_photos do |t|
      t.string :retreat_image
      t.references :retreat, foreign_key: true

      t.timestamps
    end
  end
end
