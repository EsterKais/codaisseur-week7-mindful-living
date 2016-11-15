class CreateProfilesRetreats < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles_retreats, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :retreat, index: true
    end
  end
end
