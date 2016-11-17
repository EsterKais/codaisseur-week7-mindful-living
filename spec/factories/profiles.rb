FactoryGirl.define do
  factory :profile do
    first_name            { Faker::Name.first_name }
    last_name             { Faker::Name.last_name }
    profile_description   { Faker::Lorem.sentence }
    teacher               true
    years_in_practice     ">1"
  end
end
