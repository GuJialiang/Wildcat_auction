class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.decimal :base_price
      t.string :description
      t.decimal :bid_increment
      t.string :keywords
      t.string :picture
      t.decimal :reserve_price
      t.integer :seller_id
      t.string :title

      t.timestamps
    end
  end
end
