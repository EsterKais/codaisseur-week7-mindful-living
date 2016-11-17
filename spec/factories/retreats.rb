FactoryGirl.define do
  factory :retreat do
    retreat_name         { Faker::Name.name}
    retreat_description  { Faker::Lorem.sentence }
  end
end
