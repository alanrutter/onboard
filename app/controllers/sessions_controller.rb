class SessionsController < ApplicationController
  
  def new
  end

  def create
  	
  	@username = params[:session][:username]
  	@password = params[:session][:username]
  	@user = User.find_by_username(@username)
  	
  	if @user.present? and @user.authenticate(@password)
 			session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		flash[:error] = "Oops! Try again…"
  		render :new
  	end
 	end
  
 	def destroy 
 	 		reset_session
 	 		flash[:success] = "You have logged out"
 	 		redirect_to root_path
  end

end
