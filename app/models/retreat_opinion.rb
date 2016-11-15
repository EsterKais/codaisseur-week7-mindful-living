class RetreatOpinion < ApplicationRecord
# ASSOCIATIONS
  belongs_to :retreat

# VALIDATIONS
  validates :retreat_opinion_name, presence: true
  validates :retreat_opinion_title, presence: true
  validates :retreat_opinion_text, presence: true

end
