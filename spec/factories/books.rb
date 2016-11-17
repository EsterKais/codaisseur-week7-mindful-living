FactoryGirl.define do
  factory :book do
    book_name         { Faker::Name.name}
    book_description  { Faker::Lorem.sentence }
  end
end
