class CreateCourseOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :course_opinions do |t|
      t.text :course_opinion_text
      t.string :course_opinion_title
      t.string :course_opinion_name
      t.boolean :course_opinion_approved
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
