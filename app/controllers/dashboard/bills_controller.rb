class Dashboard::BillsController < ApplicationController         
  before_filter :login_required  
  # GET /dashboard_bills
  # GET /dashboard_bills.xml
  def index
    @bills = Bill.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /dashboard_bills/1
  # GET /dashboard_bills/1.xml
  def show
    @bill = Bill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bill }
    end
  end

  # GET /dashboard_bills/new
  # GET /dashboard_bills/new.xml
  def new
    @bill = Bill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bill }
    end
  end

  # GET /dashboard_bills/1/edit
  def edit
    @bill = Bill.find(params[:id])
  end

  # POST /dashboard_bills
  # POST /dashboard_bills.xml
  def create
    @bill = Bill.new(params[:bill])

    respond_to do |format|
      if @bill.save
        flash[:notice] = 'Bill was successfully created.'
        format.html { redirect_to(dashboard_bills_path) }
        format.xml  { render :xml => @bill, :status => :created, :location => @bill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dashboard_bills/1
  # PUT /dashboard_bills/1.xml
  def update
    @bill = Bill.find(params[:id])

    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        flash[:notice] = 'Bill was successfully updated.'
        format.html { redirect_to(dashboard_bills_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard_bills/1
  # DELETE /dashboard_bills/1.xml
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy

    respond_to do |format|
      format.html { redirect_to(dashboard_bills_url) }
      format.xml  { head :ok }
    end
  end
end
