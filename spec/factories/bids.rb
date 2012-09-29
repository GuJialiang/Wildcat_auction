# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bid, :class => 'Bids' do
    auction_id 1
    bidder_id 1
    price 1
  end
end
