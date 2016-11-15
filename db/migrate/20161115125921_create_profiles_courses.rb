class CreateProfilesCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles_courses, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :course, index: true
    end
  end
end
