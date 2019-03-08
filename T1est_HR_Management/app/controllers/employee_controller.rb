class EmployeeController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index

  	@employees = Employee.all

  end

   def show

  	@employee = Employee.find(params[:id])
    @employee.department
    @employee.role
    @employee.gender

   end

  def new
  	@employee  = Employee.new
  end


  def create
    
    employee_params.merge!(date_of_birth: params[:date_of_birth])
  	@employee = Employee.create(employee_params) 
  	redirect_to "/"
  end



  def edit
    @employee = Employee.find(params[:id])
  end

  def update
  	@employee = Employee.update(employee_params)
    redirect_to "/"
  end

  def delete
  	
  end

  def destroy
  	
  end
  private
  def employee_params
  	params.require(:employee).permit(:employee_code,:first_name,:last_name,:designation,:current_CTC,:role_id,:department_id,:skill,:gender_id,:email)
  end
end
