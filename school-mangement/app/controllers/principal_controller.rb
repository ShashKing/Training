class PrincipalController < ApplicationController
  def index
  	role_id = Role.find_by(name: "Principal").id
  	@users = User.where.not(role_id: "#{role_id}")
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
    redirect_to "/Principal/index"
  end
end
