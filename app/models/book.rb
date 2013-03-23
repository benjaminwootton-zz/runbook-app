class Book < ActiveRecord::Base
  attr_accessible :description, :id, :title

  has_many :steps
  has_many :runs

  validates_presence_of :title, :description

  def number_of_open_runs
    completed_runs = runs.all
    completed_runs.nil? ? 0 : completed_runs.size
  end

  def most_recent_run
    completed_runs = runs.first( :order => 'CREATED_AT DESC' )
  end
end
