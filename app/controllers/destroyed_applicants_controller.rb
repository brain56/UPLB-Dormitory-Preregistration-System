class DestroyedApplicantsController < ApplicationController
  # GET /destroyed_applicants
  # GET /destroyed_applicants.xml
  def index
    @destroyed_applicants = DestroyedApplicant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @destroyed_applicants }
    end
  end

  # GET /destroyed_applicants/1
  # GET /destroyed_applicants/1.xml
  def show
    @destroyed_applicant = DestroyedApplicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @destroyed_applicant }
    end
  end

  # GET /destroyed_applicants/new
  # GET /destroyed_applicants/new.xml
  def new
    @destroyed_applicant = DestroyedApplicant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @destroyed_applicant }
    end
  end

  # GET /destroyed_applicants/1/edit
  def edit
    @destroyed_applicant = DestroyedApplicant.find(params[:id])
  end

  # POST /destroyed_applicants
  # POST /destroyed_applicants.xml
  def create
    @destroyed_applicant = DestroyedApplicant.new(params[:destroyed_applicant])

    respond_to do |format|
      if @destroyed_applicant.save
        format.html { redirect_to(@destroyed_applicant, :notice => 'Destroyed applicant was successfully created.') }
        format.xml  { render :xml => @destroyed_applicant, :status => :created, :location => @destroyed_applicant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @destroyed_applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /destroyed_applicants/1
  # PUT /destroyed_applicants/1.xml
  def update
    @destroyed_applicant = DestroyedApplicant.find(params[:id])

    respond_to do |format|
      if @destroyed_applicant.update_attributes(params[:destroyed_applicant])
        format.html { redirect_to(@destroyed_applicant, :notice => 'Destroyed applicant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @destroyed_applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /destroyed_applicants/1
  # DELETE /destroyed_applicants/1.xml
  def destroy
    @destroyed_applicant = DestroyedApplicant.find(params[:id])
    
	attributes = @destroyed_applicant.attributes
	
	respond_to do |format|
		if @applicant = Applicant.create(attributes)
			@destroyed_applicant.destroy
	        format.html { redirect_to(@destroyed_applicant, :notice => 'Applicant Restored.') }
	        format.xml  { render :xml => @applicant, :status => :created, :location => @applicant }
	    else
	        format.html { render :action => "new" }
	        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
	    end
	end
  end
  end