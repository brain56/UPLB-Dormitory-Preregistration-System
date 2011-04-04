class ApplicantsController < ApplicationController
  # GET /applicants
  # GET /applicants.xml
  
	def login
		if session[:user_id]
			reset_session
	  end
	end
  
  def index

   	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
	  	@applicants = Applicant.find(:all, :conditions=>"snum!='admin'")
		respond_to do |format|
		  format.html # index.html.erb
		  format.xml  { render :xml => @applicants }
		end
    end
  end

  # GET /applicants/1
  # GET /applicants/1.xml
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @applicant }
    end
  end
#shows image of itr
  def showImage1
	@image_data = Applicant.find(params[:id])
	@image = @image_data.itr
	send_data @image, :type => "image/jpg", :disposition => 'inline'
  end
  
  #shows image of electricity
  def showImage2
	@image_data = Applicant.find(params[:id])
	@image = @image_data.electricity
	send_data @image, :type => "image/jpg", :disposition => 'inline'
  end
  
  #show image of admission
  def showImage3
	@image_data = Applicant.find(params[:id])
	@image = @image_data.admission
	send_data @image, :type => "image/jpg", :disposition => 'inline'
  end
  
  #shows image of 2x2 picture
  def showImage4
	@image_data = Applicant.find(params[:id])
	@image = @image_data.picture
	send_data @image, :type => "image/jpg", :disposition => 'inline'
  end
  
  def sortByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=> "sNum!='admin'",:order => "sName, fName, mName")
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortACCIByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='acci'")
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortATIByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='ati'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortMarehaByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='mareha'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortMensByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='mens'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortNewDormByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='new'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def sortNewForehaByName
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "sName, fName, mName", :conditions=>"reservedIn='newforeha'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
   
  def sortByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"snum!='admin'")
		@byPoints = @applicants.sort_by(&:points).reverse
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def sortACCIByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='acci'")
		
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  
  def sortATIByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='ati'")
		#@byPoints = @applicants.sort_by(&:points)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def sortMarehaByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='mareha'")
		#@byPoints = @applicants.sort_by(&:points)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def sortMensByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='mens'")
		#@byPoints = @applicants.sort_by(&:points)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def sortNewDormByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='new'")
		#@byPoints = @applicants.sort_by(&:points)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def sortNewForehaByPoints
	 if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"reservedIn='newforeha'")
		#@byPoints = @applicants.sort_by(&:points)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @byPoints }
		end
	end
  end
  
  def viewACCIReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='acci'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
    def viewATIReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='ati'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
    def viewMarehaReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='mareha'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
  def viewMensReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='mens'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
    def viewNewDormReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='new'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
      def viewNewForehaReservation
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :conditions=>"reservedIn='newforeha'")
		#@by_name = @applicants.sort_by(&:sName)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @applicants }
		end
	end
  end
  
    def generateReservations
	if !session[:user_id]
		redirect_to :controller =>'user', :action=> 'login'
	else
		@applicants = Applicant.find(:all, :order => "points DESC, sName, fName, mName ", :conditions=>"sNum!='admin'") 
		#@applicants = Applicant.find(:all, :conditions=>"snum!='admin'")
		#respond_to do |applicant|
		#applicant.sName = 'X'
		respond_to do |format|
			  format.html # new.html.erb
			  format.xml  { render :xml => @applicant }
		end
	end
  end
  
  def count_by_sql(sql)
	  sql = sanitize_conditions(sql)
	  connection.select_value(sql, "#{name} Count").to_i
end
  
  # GET /applicants/new
  # GET /applicants/new.xml
  def new
    @applicant = Applicant.new 
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @applicant }
    end
  end

  # GET /applicants/1/edit
  def edit
    #@applicant = Applicant.find(:id, :conditions=>"sNum=?", @user.sNum)
	@applicant = Applicant.find(params[:id])
  end

  
  # POST /applicants
  # POST /applicants.xml
  def create
    @applicant = Applicant.new(params[:applicant])
	
    respond_to do |format|
      if @applicant.save
        format.html { redirect_to(@applicant, :notice => 'Applicant was successfully created.') }
        format.xml  { render :xml => @applicant, :status => :created, :location => @applicant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /applicants/1
  # PUT /applicants/1.xml
  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if @applicant.update_attributes(params[:applicant])
        format.html { redirect_to(@applicant, :notice => 'Applicant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.xml
  def destroy
	@applicant = Applicant.find(params[:id])
	
	attributes = @applicant.attributes
	
	respond_to do |format|
		if @destroyed_applicant = DestroyedApplicant.create(attributes)
			@applicant.destroy
			format.html { redirect_to(@applicant, :notice => 'Applicant Information successfully deleted.') }
			format.xml  { render :xml => @destroyed_applicant, :status => :created, :location => @destroyed_applicant }
		else
			format.html { render :action => "new" }
			format.xml  { render :xml => @destroyed_applicant.errors, :status => :unprocessable_entity }
		end
	end
  end
  


 def private
 	 if !session[:user_id]
    	redirect_to :action=> 'login'
	end
  end

	
	def authenticate
		#User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
		@user = Applicant.new(params[:userform])
		#find records with username,password
		valid_user = Applicant.find(:first,:conditions => ["sNum = ? and password = ?",@user.sNum, @user.password])

		#if statement checks whether valid_user exists or not
		if valid_user
		#creates a session with username
			session[:user_id]=valid_user.sNum
		#redirects the user to our private page.
			redirect_to :action => 'private'
		else
			flash[:notice] = "Invalid User/Password"
			redirect_to :action=> 'login'
		end
	end
	
  def logout
	  if session[:user_id]
		reset_session
		redirect_to :action=> 'login'
	  end
  end

  end