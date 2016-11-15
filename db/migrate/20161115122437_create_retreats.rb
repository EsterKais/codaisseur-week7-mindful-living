class CreateRetreats < ActiveRecord::Migration[5.0]
  def change
    create_table :retreats do |t|
      t.string :retreat_name
      t.text :retreat_description
      t.string :retreat_link_to_info
      t.string :retreat_link_to_booking

      t.timestamps
    end
  end
end
