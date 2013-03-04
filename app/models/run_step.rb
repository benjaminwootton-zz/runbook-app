class RunStep < ActiveRecord::Base
  attr_accessible :book_step_id, :id, :run_id

  belongs_to :run
  belongs_to :book_step

end
