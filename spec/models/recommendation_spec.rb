require 'rails_helper'

RSpec.describe Recommendation, type: :model do
  describe "validations" do
    it "is invalid without a user" do
      recommendation = Recommendation.new(user: nil)
      recommendation.valid?
      expect(recommendation.errors).to have_key(:user)
    end
  end

  describe "models" do
    let!(:user) { create :user }
    let!(:user1) { create :user }

    let!(:recommendation) { create :recommendation, book_id: 1, course_id: 1, retreat_id: 1, user: user, recipient: user1 }
    it "validates has_book_id? " do
      expect(recommendation.has_book_id?).to eq(true)
    end

    it "validates has_course_id? " do
      expect(recommendation.has_course_id?).to eq(true)
    end

    it "validates has_retreat_id? " do
      expect(recommendation.has_retreat_id?).to eq(true)
    end

    it "validates has_recommendation_message?" do
      expect(recommendation.has_recommendation_message?).to eq(true)
    end
  end
end
