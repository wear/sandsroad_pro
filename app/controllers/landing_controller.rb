class LandingController < ApplicationController   
  caches_page :index 
  
  def index
    respond_to do |wants|
      wants.html {  }
    end
  end

end
