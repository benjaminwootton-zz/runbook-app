require 'spec_helper'

describe "runs/edit" do
  before(:each) do
    @run = assign(:run, stub_model(Run,
      :id => 1,
      :user_id => 1,
      :book_id => 1,
      :complete => false
    ))
  end

  it "renders the edit run form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", run_path(@run), "post" do
      assert_select "input#run_id[name=?]", "run[id]"
      assert_select "input#run_user_id[name=?]", "run[user_id]"
      assert_select "input#run_book_id[name=?]", "run[book_id]"
      assert_select "input#run_complete[name=?]", "run[complete]"
    end
  end
end
