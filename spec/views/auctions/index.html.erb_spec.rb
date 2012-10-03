require 'spec_helper'

describe "auctions/index" do
  before(:each) do
    assign(:auctions, [
      stub_model(Auction,
        :base_price => "9.99",
        :description => "Description",
        :bid_increment => "9.99",
        :keywords => "Keywords",
        :picture => "Picture",
        :reserve_price => "9.99",
        :seller_id => 1,
        :title => "Title"
      ),
      stub_model(Auction,
        :base_price => "9.99",
        :description => "Description",
        :bid_increment => "9.99",
        :keywords => "Keywords",
        :picture => "Picture",
        :reserve_price => "9.99",
        :seller_id => 1,
        :title => "Title"
      )
    ])
  end

  it "renders a list of auctions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
