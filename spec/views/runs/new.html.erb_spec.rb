require 'spec_helper'

describe "runs/new" do
  before(:each) do
    assign(:run, stub_model(Run,
      :id => 1,
      :user_id => 1,
      :book_id => 1,
      :complete => false
    ).as_new_record)
  end

  it "renders new run form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", runs_path, "post" do
      assert_select "input#run_id[name=?]", "run[id]"
      assert_select "input#run_user_id[name=?]", "run[user_id]"
      assert_select "input#run_book_id[name=?]", "run[book_id]"
      assert_select "input#run_complete[name=?]", "run[complete]"
    end
  end
end
