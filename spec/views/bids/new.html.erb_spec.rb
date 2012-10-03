require 'spec_helper'

describe "bids/new" do
  before(:each) do
    assign(:bid, stub_model(Bid,
      :auction_id => 1,
      :bidder_id => 1,
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bids_path, :method => "post" do
      assert_select "input#bid_auction_id", :name => "bid[auction_id]"
      assert_select "input#bid_bidder_id", :name => "bid[bidder_id]"
      assert_select "input#bid_price", :name => "bid[price]"
    end
  end
end
