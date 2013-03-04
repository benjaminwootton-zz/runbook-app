class Book < ActiveRecord::Base
  attr_accessible :description, :id, :title

  has_many :book_steps
  has_many :runs
end
