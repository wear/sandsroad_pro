class Bill < ActiveRecord::Base
  validates_presence_of :reason
  validates_associated :user
  validates_presence_of :amount 
  validates_numericality_of :amount       
  
  belongs_to :user    
  
  def category=(value)
     write_attribute :category,value.to_s
  end
end
