require 'spec_helper'

describe "runs/show" do
  before(:each) do
    @run = assign(:run, stub_model(Run,
      :id => 1,
      :user_id => 2,
      :book_id => 3,
      :complete => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
  end
end
