require 'rails_helper'

RSpec.describe RetreatOpinion, type: :model do
  describe "validations" do
    it "is invalid without a retreat_opinion name" do
      retreat_opinion = RetreatOpinion.new(retreat_opinion_name: "")
      retreat_opinion.valid?
      expect(retreat_opinion.errors).to have_key(:retreat_opinion_name)
    end

    it "is invalid without a retreat_opinion title" do
      retreat_opinion = RetreatOpinion.new(retreat_opinion_title: "")
      retreat_opinion.valid?
      expect(retreat_opinion.errors).to have_key(:retreat_opinion_title)
    end

    it "is invalid wihtout a retreat_opinion description" do
      retreat_opinion = RetreatOpinion.new(retreat_opinion_text: "")
      retreat_opinion.valid?
      expect(retreat_opinion.errors).to have_key(:retreat_opinion_text)
    end
  end
end
