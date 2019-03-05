class SessionsController < ApplicationController
	
  def new
  end

  def create
  	user =User.find(name: params[:name])
  	if user and authenticate(params[:password])
  		session[:user_id]=user_id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert:"Invalid Username or password"
  		
  	end
  end

  def destroy
  	session[:user_id]=nil
  	redirect_to login_url, alert:"Successful Logged Out"
  end
end
