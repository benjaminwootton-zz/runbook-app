class Run < ActiveRecord::Base
  attr_accessible :book_id, :complete, :id, :user_id, :created_at

  belongs_to :book
  
  has_many :run_steps

  def in_role?(role)
  	true
  end


end
