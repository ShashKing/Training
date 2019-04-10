class UserController < ApplicationController
  def index
  	@users = User.all 
  end

  def new
  	@user = User.new
  
  end

  def show
    
  end

  def address
    @user = @user
  end

  def salpin
    @user = @user
  end

  def create
  	@user = User.create(user_params)
  	render :index
  end
  def user_params
  	params.permit(:first_name, :last_name, :email, :ph_number, :city, :state, :pincode, :salary)
  end
end
