class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.integer :seller_id
      t.string :title
      t.string :description
      t.string :picture
      t.integer :base_price
      t.integer :reserve_price
      t.integer :increment
      t.string :keywords

      t.timestamps
    end
  end
end
