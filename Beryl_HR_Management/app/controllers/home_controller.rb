class HomeController < ApplicationController
  def index
  	employees = Employee.all
    @employees = employees.order(first_name: :asc)
  end

  def new
  	@employee = Employee.new
  	@employee.addresses.new

  end

  def create
   
  	@employee = Employee.create(employee_params)
  	redirect_to "/home#index"
    end

  def show
  	@employee = Employee.find(params[:id])

  end

  def edit
    @employee = Employee.find(params[:id])
    #@employee.addresses.update(params[:id])
  end

  def update
     # debugger
    @employee = Employee.find(params[:id])
  	@employee.update(employee_params)
  	#@employee.update(addresses_attributes:[:ad_name => 'Delhi'])

    redirect_to "/"
  end

  def delete
  	
  end

  def destroy
  	@employee = Employee.find(params[:id])
  	@employee.destroy

  	redirect_to "/"
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :role_id, :email, :password, :permanent_address, :current_address, :gender_id, :designation_id, :department_id, :dob,:employee_code,:current_salary, addresses_attributes: [:id,:ad_name])
  end



end
