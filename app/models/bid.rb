class Bid < ActiveRecord::Base
  attr_accessible :auction_id, :bidder_id, :price
  validates :auction_id, presence: true
  validates :bidder_id, presence: true
  validates :price, presence: true
end
