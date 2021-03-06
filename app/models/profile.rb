class Profile < ApplicationRecord
# ASSOCIATIONS
  belongs_to :user
  has_one :profilephoto, dependent: :destroy #this could also be profile_photo, in case I run into bugs later on
  has_and_belongs_to_many :books
  has_and_belongs_to_many :retreats
  has_and_belongs_to_many :courses

# VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :years_in_practice, presence: true
  validates :teacher, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    Profile.where('first_name LIKE :search OR last_name LIKE :search', search: "%#{search}")
  end

end
