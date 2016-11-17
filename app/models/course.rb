class Course < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :coursephotos, dependent: :destroy
  has_many :courseopinions, dependent: :destroy

# VALIDATIONS
  validates :course_name, presence: true, uniqueness: true
  validates :course_description, presence: true

# SCOPES
  scope :by_course_name,    -> { order(:course_name) }
  scope :by_latest,       -> { order(:updated_at) }

  def self.search(search)
    Course.where('course_name LIKE :search OR course_description LIKE :search', search: "%#{search}")
  end
end
