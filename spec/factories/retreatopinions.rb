FactoryGirl.define do
  factory :retreat_opinion do
    retreat_opinion_text     { Faker::Lorem.sentence }
    retreat_opinion_name     { Faker::Name.name}
    retreat_opinion_title    { Faker::Name.name}
    retreat_opinion_approved true
  end
end
