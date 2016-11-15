class CreateBookOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :book_opinions do |t|
      t.text :book_opinion_text
      t.string :book_opinion_title
      t.string :book_opinion_name
      t.boolean :book_opinion_approved
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
