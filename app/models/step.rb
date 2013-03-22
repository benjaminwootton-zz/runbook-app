class Step < ActiveRecord::Base
  attr_accessible :book_id, :description, :id, :title, :captured_output, :capture_output

  belongs_to :book
  has_many :step_validations

  attr_accessor :captured_output

  def next 
  	Step.find( :first, :conditions => [ 'id > ? and book_id = ?', id.to_s, book_id.to_s], :order => 'id asc' )
  end

  def previous 
  	Step.find( :first, :conditions => [ 'id < ? and book_id = ?', id.to_s, book_id.to_s ], :order => 'id desc' )
  end


end
