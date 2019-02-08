FactoryBot.define do
  factory :report do
    user { create(:user) }
    comment { create(:comment) }
  end
end
