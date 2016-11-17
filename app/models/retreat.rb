class Retreat < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :retreatphotos, dependent: :destroy
  has_many :retreatopinions, dependent: :destroy

# VALIDATIONS
  validates :retreat_name, presence: true, uniqueness: true
  validates :retreat_description, presence: true

# SCOPES
  scope :by_retreat_name,    -> { order(:retreat_name) }
  scope :by_latest,       -> { order(:updated_at) }

  def self.search(search)
    Retreat.where('retreat_name LIKE :search OR retreat_description LIKE :search', search: "%#{search}")
  end
end
