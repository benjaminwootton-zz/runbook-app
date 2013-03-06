require 'spec_helper'

describe RunStep do
    
    it "do some fish" do 
  		run = Run.new
  		run.should be_in_role("some role")
  	end

end
