class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.text :book_description
      t.string :book_link_to_buy

      t.timestamps
    end
  end
end
