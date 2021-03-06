class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :years_in_practice
      t.text :profile_description
      t.boolean :teacher
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
