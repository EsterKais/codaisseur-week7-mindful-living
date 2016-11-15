class Retreat < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :retreatphotos, dependent: :destroy
  has_many :retreatopinions, dependent: :destroy

# VALIDATIONS
  validates :retreat_name, presence: true, uniqueness: true
  validates :retreat_description, presence: true

end
