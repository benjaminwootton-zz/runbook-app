require 'spec_helper'

describe Step do
    
    it "d o some fish" do 
  		run = Run.new
  		run.should be_in_role("some role")
  	end

end
