class Bill < ActiveRecord::Base
  validates_presence_of :reason
  validates_associated :user
  validates_presence_of :amount 
  validates_numericality_of :amount       
  
  belongs_to :user    
  
  def category=(value)
     write_attribute :category,value.to_s
  end   
  
  def project=(value)
     write_attribute :project,value.to_s
  end
  
  def user_id=(value)
     write_attribute :user_id,value.to_s
  end    
  
  
end
