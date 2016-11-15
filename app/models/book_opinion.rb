class BookOpinion < ApplicationRecord
# ASSOCIATIONS
  belongs_to :book

# VALIDATIONS
  validates :book_opinion_name, presence: true
  validates :book_opinion_title, presence: true
  validates :book_opinion_text, presence: true
end
