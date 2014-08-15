class HousesController < ApplicationController
  
  def index
  	@houses = House.all
  end

  def show
  	@house = House.find(params[:id])
  end

  def new
    # the house variable is a new empty instance of my House object
    require_user
    @user = current_user  
    @house = @user.houses.new
  end

  def create
    require_user
    @user = current_user
    @house = @user.houses.new(house_params)
    @house.save
    redirect_to house_path(@house)
  end

  def edit
    require_user
    @user = current_user
    @house = @user.houses.find(params[:id])
  end

  def update
    require_user
    @user = current_user
    @house = @user.houses.find(params[:id])
    
    if @house.update(house_params)
      flash[:success] = "House successfully update"
      redirect_to house_path
    else
      flash[:error] = "Something went wrong! House not updated, please try again"
      render :edit
    end
  
  end

  def destroy
  end

  private
  def house_params 
    params.require(:house).permit(:title, :address, :description, :price_in_pence, :number_of_rooms, :max_guests, :image, :user_id)
  end

end
