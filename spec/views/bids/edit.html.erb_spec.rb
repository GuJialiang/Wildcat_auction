require 'spec_helper'

describe "bids/edit" do
  before(:each) do
    @bid = assign(:bid, stub_model(Bid,
      :auction_id => 1,
      :bidder_id => 1,
      :price => "9.99"
    ))
  end

  it "renders the edit bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bids_path(@bid), :method => "post" do
      assert_select "input#bid_auction_id", :name => "bid[auction_id]"
      assert_select "input#bid_bidder_id", :name => "bid[bidder_id]"
      assert_select "input#bid_price", :name => "bid[price]"
    end
  end
end
