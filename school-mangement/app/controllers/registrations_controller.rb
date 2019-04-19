class RegistrationsController < Devise::RegistrationsController
  
  def create 
		@user = User.new(user_params)
		if @user.save
      redirect_to '/'
      flash[:success] = "Sign Up Successfully"
    else
    	render :new
    	flash[:danger] = "Try Again for Sign up"
    end
	end
def user_params
		params.require(:user).permit(:email, :password, :role_id, :gender_id)
	end
end 