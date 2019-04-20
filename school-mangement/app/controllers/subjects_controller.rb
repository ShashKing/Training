class SubjectsController < ApplicationController
  def new
  	

  end

  def create
  	@subject = Subject.new(subject_params)
    @subject.user_id = User.find(params[:id]).id
    if @subject.save(subject_params)
  	  redirect_to "/subjects/show"
    else
      render :new
    end
  end

  def show
 
    @subjects = Subject.where(user_id: params[:id])
  end

  def edit
    @subject = Subject.find_by(params[:examtype_id])
    @user = User.find(params[:id])
  end

  def update

    @subject = Subject.find_by(params[:examtype_id])
    @subject.update(subject_params)
    redirect_to "/subjects/show"
  end

  def index
  	@subjects = Subject.all
    @user = User.find(params[:id])
  end

  def subject_params
  	params.permit(:hindi, :english, :gk, :maths, :drawing, :science, :sst, :pt, :sanskrit, :computer, :examtype_id,:user_id)
  end
  def destroy
    @subject = Subject.find_by(params[:examtype_id])
    @subject.destroy
    redirect_to "/subjects/show"
    
  end
end
