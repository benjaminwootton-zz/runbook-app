require 'spec_helper'

describe User do


	it "should have multiple in progress runs" do
		user = User.new		
		user.runs = [
			Run.new(:active => 1),
			Run.new(:active => 0),
			Run.new(:active => 0)
		]	
		user.active_runs.size.should_be 1 
	end


end
