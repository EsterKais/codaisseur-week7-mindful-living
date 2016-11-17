require 'rails_helper'

RSpec.describe CourseOpinion, type: :model do
  describe "validations" do
    it "is invalid without a course_opinion name" do
      course_opinion = CourseOpinion.new(course_opinion_name: "")
      course_opinion.valid?
      expect(course_opinion.errors).to have_key(:course_opinion_name)
    end

    it "is invalid without a course_opinion title" do
      course_opinion = CourseOpinion.new(course_opinion_title: "")
      course_opinion.valid?
      expect(course_opinion.errors).to have_key(:course_opinion_title)
    end

    it "is invalid wihtout a course_opinion description" do
      course_opinion = CourseOpinion.new(course_opinion_text: "")
      course_opinion.valid?
      expect(course_opinion.errors).to have_key(:course_opinion_text)
    end
  end
end
