# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auction, :class => 'Auctions' do
    seller_id 1
    title "MyString"
    description "MyString"
    picture "MyString"
    base_price 1
    reserve_price 1
    increment 1
    keywords "MyString"
  end
end
