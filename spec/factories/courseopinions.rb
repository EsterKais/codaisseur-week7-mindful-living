FactoryGirl.define do
  factory :course_opinion do
    course_opinion_text     { Faker::Lorem.sentence }
    course_opinion_name     { Faker::Name.name}
    course_opinion_title    { Faker::Name.name}
    course_opinion_approved true
  end
end
