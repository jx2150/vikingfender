class FendersController < ApplicationController
  # GET /fenders
  # GET /fenders.xml
  def index
    #@fender_type = params[:fender_type]||nil
    #if @fender_type
    #  @fenders = Fender.find(:all, :conditions => ["fender_type=:fender_type", {:fender_type => fender_type}])
   # else
      @fenders = Fender.all
   # end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fenders }
    end
  end
  
  def list_by_type
    @fender_type = params[:fender_type]
    @fenders = Fender.find(:all, :conditions => ["fender_type = ? OR fender_type LIKE ?", @fender_type, '%'+@fender_type+'%'])
    
    respond_to do |format|
      format.html { render :template => "fenders/index.html.erb" }
      format.xml  { render :xml => @fenders }
    end
  end
  
  # GET /fenders/1
  # GET /fenders/1.xml
  def show
    @fender = Fender.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fender }
    end
  end

  # GET /fenders/new
  # GET /fenders/new.xml
  def new
    @fender = Fender.new
    5.times { @fender.assets.build }
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fender }
    end
  end

  # GET /fenders/1/edit
  def edit
    @fender = Fender.find(params[:id])
    5.times { @fender.assets.build }
    
  end

  # POST /fenders
  # POST /fenders.xml
  def create
    @fender = Fender.new(params[:fender])

    respond_to do |format|
      if @fender.save
        format.html { redirect_to(@fender, :notice => 'Fender was successfully created.') }
        format.xml  { render :xml => @fender, :status => :created, :location => @fender }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fender.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fenders/1
  # PUT /fenders/1.xml
  def update
    @fender = Fender.find(params[:id])

    respond_to do |format|
      if @fender.update_attributes(params[:fender])
        format.html { redirect_to(@fender, :notice => 'Fender was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fender.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fenders/1
  # DELETE /fenders/1.xml
  def destroy
    @fender = Fender.find(params[:id])
    @fender.destroy

    respond_to do |format|
      format.html { redirect_to(fenders_url) }
      format.xml  { head :ok }
    end
  end

end
