class StepValidation < ActiveRecord::Base
  attr_accessible :description, :id, :step_id

  belongs_to :step
end
