# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    type ""
    username "MyString"
    email "MyString"
    name "MyString"
  end
end
