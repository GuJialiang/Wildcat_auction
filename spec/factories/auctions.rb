# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auction do
    base_price "9.99"
    description "MyString"
    increment "9.99"
    keywords "MyString"
    picture "MyString"
    reserve_price "9.99"
    seller_id 1
    title "MyString"
  end
end
