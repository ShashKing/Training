class TeacherController < ApplicationController
  def index
  	@teachers = Teacher.all
  end

  def new
  end

  def edit
  end

  def show
  	@teacher = Teacher.find(params[:id])
  end
end
