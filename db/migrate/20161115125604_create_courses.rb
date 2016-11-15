class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.text :course_description
      t.string :course_link_to_info
      t.string :course_link_to_booking

      t.timestamps
    end
  end
end
