require 'spec_helper'

describe "runs/index" do
  before(:each) do
    assign(:runs, [
      stub_model(Run,
        :id => 1,
        :user_id => 2,
        :book_id => 3,
        :complete => false
      ),
      stub_model(Run,
        :id => 1,
        :user_id => 2,
        :book_id => 3,
        :complete => false
      )
    ])
  end

  it "renders a list of runs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
