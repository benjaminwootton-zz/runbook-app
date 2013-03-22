class Run < ActiveRecord::Base
  attr_accessible :book_id, :complete, :id, :user_id, :created_at

  belongs_to :book
  
  belongs_to :user

  def in_role?(role)
  	true
  end

  def append_step_output output
    puts 'APPENDING STEP OUTPUT - ' + output
  end

end
 
