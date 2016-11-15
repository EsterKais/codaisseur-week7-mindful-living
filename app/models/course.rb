class Course < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :coursephotos, dependent: :destroy
  has_many :courseopinions, dependent: :destroy

# VALIDATIONS
  validates :course_name, presence: true, uniqueness: true
  validates :course_description, presence: true

end
