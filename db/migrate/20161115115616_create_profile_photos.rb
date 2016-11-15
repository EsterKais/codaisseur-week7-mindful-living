class CreateProfilePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_photos do |t|
      t.string :profile_image
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
