FactoryBot.define do
  factory :comment do
    sequence(:text) {|n| "MyString#{n}"}
    user { create(:user) }
    event { create(:event) }
  end
end
