class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

	def create

		@user = User.new(user_params)

		if @user.save
			flash[:success] = "You have signed up"
			redirect_to root_path
		else
			flash[:error] = "Something went wrong! Please try again"
			render :new
		end

	end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      flash[:success] = "User successfully update"
      redirect_to user_path
    else
      flash[:error] = "Something went wrong! User not updated, please try again"
      render :edit
    end
  end
  
private
	
	def user_params
	params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end

end
