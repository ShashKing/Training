class TeachersController < ApplicationController
  def index
  	role_id = Role.find_by(name: "Student").id
  	@users = User.where(role_id: "#{role_id}")
  end

  def new
  	@user = User.new
  end

  def user
  	@user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/teachers/index"
  end
end
