require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it "is invalid without a profile first name" do
      profile = Profile.new(first_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:first_name)
    end

    it "is invalid without a profile last name" do
      profile = Profile.new(last_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:last_name)
    end

    it "is invalid without years_in_practice" do
      profile = Profile.new(years_in_practice: "")
      profile.valid?
      expect(profile.errors).to have_key(:years_in_practice)
    end

    it "is invalid wihtout a teacher specification" do
      profile = Profile.new(teacher: nil)
      profile.valid?
      expect(profile.errors).to have_key(:teacher)
    end

    it "is invalid without a user" do
      profile = Profile.new(user: nil)
      profile.valid?
      expect(profile.errors).to have_key(:user)
    end
  end

  # describe "profile methods" do
  #   let!(:user) { create :user }
  #   let(:profile) { create :profile, first_name: "Jenny", last_name: "Springest", user: user }
  #     expect(profile.full_name).to eq("Jenny Springest")
  # end

  describe "Profile Associations" do
    let!(:user) { create :user }
    let!(:user1) { create :user }
    let!(:profile) { create :profile, user: user }
    let!(:profile1) { create :profile, user: user1 }
    let!(:profile_photo) { create :profile_photo, profile: profile }

    it "has a profile_photo" do
      expect(profile_photo.profile).to eq(profile)
    end
  end
end
