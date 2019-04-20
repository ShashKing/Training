class AddressesController < ApplicationController
  def new
  end

  def create
  	@address = Address.new(address_params)
    @address.user_id = User.find(params[:id]).id
    @address.save(address_params)
    redirect_to "principal/user"
  end

  def show
    @addresses = Address.where(user_id: params[:id])
  end

  def edit
  end

  def address_params
  	params.permit(:country, :state, :city, :locality, :zip_code, :street, :house_no, :user_id)
  end
end
