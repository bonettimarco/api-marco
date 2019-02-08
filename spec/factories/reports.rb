FactoryBot.define do
  factory :report do
    user User.last
    comment Comment.last
  end
end
