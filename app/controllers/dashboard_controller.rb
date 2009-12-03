class DashboardController < ApplicationController    
  before_filter :login_required 
    
  def index
    respond_to do |wants|
      wants.html { redirect_to dashboard_bills_path }
    end
  end
end
