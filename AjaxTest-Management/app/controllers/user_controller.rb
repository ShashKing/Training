class UserController < ApplicationController

  def index
    @users = "https://jsonplaceholder.typicode.com/users"
    @response = HTTParty.get(@users)
    @res = JSON.parse(@response.body)
		
    params[:type]
    @user = params[:user] if params[:user].present?
    @name = params[:user][:name] if params[:user].present?
    @country = params[:user][:country] if params[:user].present?
    @phone = params[:user][:phone] if params[:user].present?
    @gender = params[:user][:gender] if params[:user].present?
    @message = params[:user][:message] if params[:user].present?
      
  end

  def search
    @users = "https://jsonplaceholder.typicode.com/users"
    @response = HTTParty.get(@users)
    @res = JSON.parse(@response.body)
    params[:sort_cat] ||='name'
    params[:sort_type] ||= 'asc'
    params[:page] ||=1
    sort_cat = params[:sort_cat]
    sort_type = params[:sort_type]

    unless params[:search_str].blank?
      @res = @res.where("name like ? ","%#{params[:search_str]}%").order("#{params[:sort_cat]} #{params[:sort_type]}").paginate(page: params[:page], per_page: 2)
    else
      @res = @res.sort_by{|x| x[sort_cat] }
      @res = @res.reverse if sort_type == 'desc'
      #@res = @res.paginate(:page => params[:page], :per_page => 5)
      # @res = @res.order("#{params[:sort_cat]} #{params[:sort_type]}").paginate(page: params[:page], per_page: 2)
    end
    
  end
end
