class UsersController < ApplicationController
 def new
  	@user = User.new
  end


  def create
  	@user = User.create(user_params)
  	# redirect_to "/users/#{@user.id}"
  end

  def show
  	@user = User.find_by(id: params[:id])
  end
  def user_params
    	params.require(:user).permit(:avatar)
  end
end
