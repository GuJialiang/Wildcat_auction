require 'spec_helper'

describe "auctions/edit" do
  before(:each) do
    @auction = assign(:auction, stub_model(Auction,
      :base_price => "9.99",
      :description => "MyString",
      :bid_increment => "9.99",
      :keywords => "MyString",
      :picture => "MyString",
      :reserve_price => "9.99",
      :seller_id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit auction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => auctions_path(@auction), :method => "post" do
      assert_select "input#auction_base_price", :name => "auction[base_price]"
      assert_select "input#auction_description", :name => "auction[description]"
      assert_select "input#auction_bid_increment", :name => "auction[bid_increment]"
      assert_select "input#auction_keywords", :name => "auction[keywords]"
      assert_select "input#auction_picture", :name => "auction[picture]"
      assert_select "input#auction_reserve_price", :name => "auction[reserve_price]"
      assert_select "input#auction_seller_id", :name => "auction[seller_id]"
      assert_select "input#auction_title", :name => "auction[title]"
    end
  end
end
