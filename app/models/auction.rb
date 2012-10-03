class Auction < ActiveRecord::Base
  attr_accessible :base_price, :bid_increment, :description, :keywords, :picture, :reserve_price, :seller_id, :title
  validates :base_price, presence: true
  validates :bid_increment, presence: true
  validates :keywords, presence: true
  validates :reserve_price, presence: true
  validates :seller_id, presence: true
  validates :title, presence: true
end
