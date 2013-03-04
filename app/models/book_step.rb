class BookStep < ActiveRecord::Base
  attr_accessible :book_id, :description, :id, :title

  belongs_to :book
end
