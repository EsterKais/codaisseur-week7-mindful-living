require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "validations" do
    it "is invalid without a course name" do
      course = Course.new(course_name: "")
      course.valid?
      expect(course.errors).to have_key(:course_name)
    end

    it "is invalid wihtout a course description" do
      course = Course.new(course_description: "")
      course.valid?
      expect(course.errors).to have_key(:course_description)
    end
  end

  describe "Course Methods" do
    let!(:course1) { create :course, course_name: "Beta", course_description: "Lorem", updated_at: "2016-11-03 03:00:00" }
    let!(:course2) { create :course, course_name: "Alpha", course_description: "Lorem", updated_at: "2016-11-01 01:00:00"}
    let!(:course3) { create :course, course_name: "Gamma", course_description: "Lorem", updated_at: "2016-11-02 02:00:00"}

    it "#order_by_course_name returns an array sorted alphabetically" do
      expect(Course.by_course_name).to match_array [course2, course1, course3]
    end

    it "#order_by_latest returns an array sorted by updated date" do
      expect(Course.by_latest).to match_array [course1, course3, course2]
    end
  end

  describe "Course Associations" do
    let!(:course) { create :course }
    let!(:course1) { create :course }
    let!(:course_photo) { create :course_photo, course: course }
    let!(:course_opinion) { create :course_opinion, course: course1}

    it "has a course_photo" do
      expect(course_photo.course).to eq(course)
    end

    it "has a course_opinion" do
      expect(course_opinion.course).to eq(course1)
    end

  end

end
