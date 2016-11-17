FactoryGirl.define do
  factory :recommendation do
    user_id                       nil
    recipient_id                  nil
    course_id                     nil
    retreat_id                    nil
    recommendation_message        { Faker::Lorem.sentence }
  end
end
