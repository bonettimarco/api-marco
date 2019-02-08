FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "MyString #{n}"
    end
    email "MyString"
    password "MyString"
  end
end

