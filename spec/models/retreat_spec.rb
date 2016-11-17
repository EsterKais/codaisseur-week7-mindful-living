require 'rails_helper'

RSpec.describe Retreat, type: :model do
  describe "validations" do
    it "is invalid without a retreat name" do
      retreat = Retreat.new(retreat_name: "")
      retreat.valid?
      expect(retreat.errors).to have_key(:retreat_name)
    end

    it "is invalid wihtout a retreat description" do
      retreat = Retreat.new(retreat_description: "")
      retreat.valid?
      expect(retreat.errors).to have_key(:retreat_description)
    end
  end

  describe "Retreat Methods" do
    let!(:retreat1) { create :retreat, retreat_name: "Beta", retreat_description: "Lorem", updated_at: "2016-11-03 03:00:00" }
    let!(:retreat2) { create :retreat, retreat_name: "Alpha", retreat_description: "Lorem", updated_at: "2016-11-01 01:00:00"}
    let!(:retreat3) { create :retreat, retreat_name: "Gamma", retreat_description: "Lorem", updated_at: "2016-11-02 02:00:00"}

    it "#order_by_retreat_name returns an array sorted alphabetically" do
      expect(Retreat.by_retreat_name).to match_array [retreat2, retreat1, retreat3]
    end

    it "#order_by_latest returns an array sorted by updated date" do
      expect(Retreat.by_latest).to match_array [retreat1, retreat3, retreat2]
    end
  end

  describe "Retreat Associations" do
    let!(:retreat) { create :retreat }
    let!(:retreat1) { create :retreat }
    let!(:retreat_photo) { create :retreat_photo, retreat: retreat }
    let!(:retreat_opinion) { create :retreat_opinion, retreat: retreat1}

    it "has a retreat_photo" do
      expect(retreat_photo.retreat).to eq(retreat)
    end

    it "has a retreat_opinion" do
      expect(retreat_opinion.retreat).to eq(retreat1)
    end

  end
end
