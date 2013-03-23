class Step < ActiveRecord::Base
  attr_accessible :book_id, :description, :id, :title, :captured_output, :capture_output, :step_screenshot

  belongs_to :book
  has_many :step_validations

  attr_accessor :captured_output

  has_attached_file :step_screenshot, :styles => {  :medium => "300x300>", :thumb => "100x100>" } 

  validates_presence_of :title, :description  


  def next 
  	Step.find( :first, :conditions => [ 'id > ? and book_id = ?', id.to_s, book_id.to_s], :order => 'id asc' )
  end

  def previous 
  	Step.find( :first, :conditions => [ 'id < ? and book_id = ?', id.to_s, book_id.to_s ], :order => 'id desc' )
  end


end
