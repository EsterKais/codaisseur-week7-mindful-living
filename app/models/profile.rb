class Profile < ApplicationRecord
# ASSOCIATIONS
  belongs_to :user
  has_one :profilephoto #this could also be profile_photo, in case I run into bugs later on

# VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :years_in_practice, presence: true
  validates :teacher, presence: true

end
