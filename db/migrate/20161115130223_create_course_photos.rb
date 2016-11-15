class CreateCoursePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :course_photos do |t|
      t.string :course_image
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
