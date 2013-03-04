require 'spec_helper'

describe "run_steps/show" do
  before(:each) do
    @run_step = assign(:run_step, stub_model(RunStep,
      :id => 1,
      :run_id => 2,
      :book_step_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
