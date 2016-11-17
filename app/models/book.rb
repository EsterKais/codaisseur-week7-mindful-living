class Book < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :bookopinions, dependent: :destroy #book_opinions
  has_one :bookphoto, dependent: :destroy

# VALIDATIONS
  validates :book_name, presence: true, uniqueness: true
  validates :book_description, presence: true

# SCOPES

  scope :by_book_name,    -> { order(:book_name) }
  scope :by_latest,       -> { order(:updated_at) }

  def self.search(search)
    Book.where('book_name LIKE :search OR book_description LIKE :search', search: "%#{search}")
  end
end
