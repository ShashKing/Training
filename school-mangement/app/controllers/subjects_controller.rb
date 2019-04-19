class SubjectsController < ApplicationController
  def new
  	

  end

  def create
    debugger
  	@subject = Subject.new(subject_params)
    @subject.user_id = User.find(params[:id]).id
    if @subject.save(subject_params)
  	  render :index
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def index
  	@subjects = Subject.all
    @user = User.find(params[:id])
  end

  def subject_params
  	params.permit(:hindi, :english, :gk, :maths, :drawing, :science, :sst, :pt, :sanskrit, :computer, :examtype_id,:user_id)
  end
end
