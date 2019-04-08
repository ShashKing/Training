class StudentsController < ApplicationController

  def index
    params[:page] ||=1
  	@students = Student.paginate(page: params[:page], per_page: 2)
  end

  def new

  	
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to students_path
  end

  def show
  	@student = Student.find(params[:id])
  end

  def edit
	@student = Student.find(params[:id])
  end

  def update
  	@student = Student.find(params[:id])
    if @student.update(student_params)
       redirect_to students_path
    else
    	render :edit
    end
  end

  def destroy
	  @student = Student.find(params[:id])
	  @student.destroy
	  redirect_to students_path
	end

  def search
    params[:page] ||=1
    @students = Student.where("name like ? or subject like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
  end

  def sorting
    @students = Student.order("#{params[:sort_type]} #{params[:sort_order]}").paginate(page: params[:page], per_page: 2)
  end

  def pagination
    params[:page] ||=1
    params[:page] = params[:total_pages].to_i if params[:page].to_i == 0
    params[:page] = 1 if params[:page].to_i > params[:total_pages].to_i
    unless params[:search_str].blank?
      @students = Student.where("name like ? or subject like ?", "%#{params[:search_str]}%", "%#{params[:search_str]}%").paginate(page: params[:page], per_page: 2)
    else
      @students = Student.paginate(page: params[:page], per_page: 2)
    end
  end

  def student_params
  	params.require(:student).permit(:name,:subject,:rollno)
  end
end
