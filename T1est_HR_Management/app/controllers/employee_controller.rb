class EmployeeController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index

  	employees = Employee.all

    @employees = employees.order(employee_code: :asc)

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

    parameters = employee_params
    date = DateTime.parse(params[:date_of_birth])
    parameters = parameters.merge!(date_of_birth: date)
    @employee = Employee.create(parameters)
      if @employee.save 
      EmployeeMailer.signup_confirmation(@employee).deliver_now
      redirect_to '/', notice: "Signed up successfully"
    else
      render :new
    end
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
    redirect_to '/'
  end
  private
  def employee_params
  	params.require(:employee).permit(:employee_code,:first_name,:last_name,:password,:designation,:current_CTC,:role_id,:department_id,:skill,:gender_id,:email)
  end
end
