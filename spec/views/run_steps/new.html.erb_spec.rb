require 'spec_helper'

describe "run_steps/new" do
  before(:each) do
    assign(:run_step, stub_model(RunStep,
      :id => 1,
      :run_id => 1,
      :book_step_id => 1
    ).as_new_record)
  end

  it "renders new run_step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", run_steps_path, "post" do
      assert_select "input#run_step_id[name=?]", "run_step[id]"
      assert_select "input#run_step_run_id[name=?]", "run_step[run_id]"
      assert_select "input#run_step_book_step_id[name=?]", "run_step[book_step_id]"
    end
  end
end
