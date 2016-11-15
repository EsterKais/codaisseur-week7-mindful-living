class Profile < ApplicationRecord
# ASSOCIATIONS
  belongs_to :user

# VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :years_in_practice, presence: true
  validates :teacher, presence: true
  
end
