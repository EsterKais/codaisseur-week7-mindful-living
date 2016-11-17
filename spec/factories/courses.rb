FactoryGirl.define do
  factory :course do
    course_name         { Faker::Name.name}
    course_description  { Faker::Lorem.sentence }
  end
end
