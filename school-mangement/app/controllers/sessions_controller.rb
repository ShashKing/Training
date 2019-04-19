class SessionsController < Devise::SessionsController

  def create
    if 	user = User.find_by(email: params[:user][:email])
 			if user.valid_password?(params[:user][:password])
 				if user.role.name == "Principal"
          sign_in(user)
          flash[:success] = "Welcome Principal"
          redirect_to "/principal/index"
 				elsif user.role.name == "Teacher"
          sign_in(user)
          flash[:success] = "Welcome Teacher"
          redirect_to "/teachers/index"
        elsif user.role.name == "Student"
          sign_in(user)
          flash[:success] = "Welcome Student"
          redirect_to "/student/index"
        else
 					flash[:danger] = "You are not authorised to access this URL."
          redirect_to "/users/sign_in"
 				end
 			else
 				flash[:danger] = "Password not matched"
        redirect_to "/users/sign_in"
 			end
		else
			flash[:danger] = "Email not found"
      redirect_to "/users/sign_in"
		end
  end

  def logout
    sign_out(resource_name)
    flash[:success] = "You have been logged out successfully!"
    redirect_to "/users/sign_in"
  end

end