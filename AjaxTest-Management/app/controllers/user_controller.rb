class UserController < ApplicationController
  def index
    
    params[:type]
    @user = params[:user] if params[:user].present?
    @name = params[:user][:name] if params[:user].present?
    @country = params[:user][:country] if params[:user].present?
    @phone = params[:user][:phone] if params[:user].present?
    @gender = params[:user][:gender] if params[:user].present?
    @message = params[:user][:message] if params[:user].present?
      
  end
end
