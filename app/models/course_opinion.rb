class CourseOpinion < ApplicationRecord
# ASSOCIATIONS
  belongs_to :course

# VALIDATIONS
  validates :course_opinion_name, presence: true
  validates :course_opinion_title, presence: true
  validates :course_opinion_text, presence: true

end
