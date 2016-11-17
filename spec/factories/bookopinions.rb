FactoryGirl.define do
  factory :book_opinion do
    book_opinion_text     { Faker::Lorem.sentence }
    book_opinion_name     { Faker::Name.name}
    book_opinion_title    { Faker::Name.name}
    book_opinion_approved true
  end
end
