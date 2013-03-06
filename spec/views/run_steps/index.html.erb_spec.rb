require 'spec_helper'

describe "run_steps/index" do
  before(:each) do
    assign(:run_steps, [
      stub_model(RunStep,
        :id => 1,
        :run_id => 2,
        :step_id => 3
      ),
      stub_model(RunStep,
        :id => 1,
        :run_id => 2,
        :step_id => 3
      )
    ])
  end

  it "renders a list of run_steps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
