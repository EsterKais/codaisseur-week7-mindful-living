class CreateProfilesBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles_books, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :book, index: true
    end
  end
end
