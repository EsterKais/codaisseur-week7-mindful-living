class Recommendation < ApplicationRecord
  belongs_to :user
  belongs_to :recipient, :class_name => "User"

  def has_book_id?
    book_id.present?
  end

  def has_course_id?
    course_id.present?
  end

  def has_retreat_id?
    retreat_id.present?
  end

  def has_recommendation_message?
    recommendation_message.present?
  end 
end
