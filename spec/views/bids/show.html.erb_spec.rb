require 'spec_helper'

describe "bids/show" do
  before(:each) do
    @bid = assign(:bid, stub_model(Bid,
      :auction_id => 1,
      :bidder_id => 2,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
  end
end
