class StudentController < ApplicationController



  def index
  	@students = Student.all
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.create(student_params)
  	redirect_to '/student'
  end

  def edit
  	@student = Student.find(params[:id])
  end

  def update
  	@student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to "/home"
  end

  def destroy
  	@student = Student.find(params[:id])
  	@student.destroy
  	redirect_to '/student'
  end

  def delete
  	
  end

  private
  def student_params
  	params.permit(:name,:address,:roll_no,:teacher_id,:class)
  end
  
end
