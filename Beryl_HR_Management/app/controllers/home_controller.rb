class HomeController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def new
  	@employee = Employee.new

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
  end

  def update
    @employee = Employee.find(params[:id])
  	@employee.update(employee_params)

    redirect_to "/"
  end

  def delete
  	
  end

  def destroy
  	@employee = Employee.find(params[:id])
  	@employee.destroy

  	redirect_to "/"
  end

  def employee_params
  params.require(:employee).permit(:first_name, :last_name, :role_id, :email, :password, :permanent_address, :current_address, :gender_id, :designation_id, :department_id, :dob,:employee_code,:current_salary)
  end



end
