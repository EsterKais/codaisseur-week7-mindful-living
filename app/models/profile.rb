class Profile < ApplicationRecord
# ASSOCIATIONS
  belongs_to :user
  has_one :profilephoto, dependent: :destroy #this could also be profile_photo, in case I run into bugs later on
  has_and_belongs_to_many :books

# VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :years_in_practice, presence: true
  validates :teacher, presence: true

end
