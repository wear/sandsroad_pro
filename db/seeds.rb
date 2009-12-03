# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create(:email => 'skung@sandsroad.com', 
            :login => 'skung',
            :password => 'zzzzzz', 
            :password_confirmation => 'zzzzzz', 
            :name => 'Stephen')  
                    
User.create(:email => 'yzhang@sandsroad.com', 
            :login => 'yzhang',
            :password => 'yzhang', 
            :password_confirmation => 'yzhang', 
            :name => 'Yzhang')                    
      
