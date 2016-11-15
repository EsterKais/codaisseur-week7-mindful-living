class Book < ApplicationRecord
# ASSOCIATIONS
  has_and_belongs_to_many :profiles
  has_many :bookopinions, dependent: :destroy #book_opinions
  has_one :bookphoto, dependent: :destroy

# VALIDATIONS
  validates :book_name, presence: true, uniqueness: true
  validates :book_description, presence: true
end
