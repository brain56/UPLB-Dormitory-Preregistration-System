class UserController < ApplicationController
  def login
  end

 def private
 	 if !session[:user_id]
    	redirect_to :action=> 'login'
	end
  end

	
	def authenticate
		#User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
		@user = User.new(params[:userform])
        #find records with username,password
		valid_user = User.find(:first,:conditions => ["username = ? and password = ?",@user.username, @user.password])

        #if statement checks whether valid_user exists or not
		if valid_user
        #creates a session with username
			session[:user_id]=valid_user.username
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
