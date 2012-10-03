require 'spec_helper'

describe "auctions/show" do
  before(:each) do
    @auction = assign(:auction, stub_model(Auction,
      :base_price => "9.99",
      :description => "Description",
      :bid_increment => "9.99",
      :keywords => "Keywords",
      :picture => "Picture",
      :reserve_price => "9.99",
      :seller_id => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/Keywords/)
    rendered.should match(/Picture/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Title/)
  end
end
