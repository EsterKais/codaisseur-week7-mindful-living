class CreateRetreatOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :retreat_opinions do |t|
      t.text :retreat_opinion_text
      t.string :retreat_opinion_title
      t.string :retreat_opinion_name
      t.boolean :retreat_opinion_approved
      t.references :retreat, foreign_key: true

      t.timestamps
    end
  end
end
