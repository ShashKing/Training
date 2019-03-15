class EmployeeController < Devise::RegistrationsController
	
	def sign_up_params
		params.require(:user).permit(:email,:password,:password_confirmation)
	end
  def index
  end

  def new
  end

  def edit
  end

  def show
  end
end
