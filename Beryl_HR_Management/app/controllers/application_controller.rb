class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception


	before_action :configure_permitted_parameters,if: :devise_controller? 

	protected

	def configure_permitted_parameters
		devise_parameter_senitizer.for(:sign_up) {|u| u.permit(:first_name,:last_name,:email,:password,:dob,:address,:remember_me)}
		devise_parameter_senitizer.for(:sign_in) {|u| u.permit(:email,:password,:remember_me)}
		devise_parameter_senitizer.for(:account_update) {|u| u.permit(:first_name,:last_name,:email,:password,:dob,:address,:remember_me)}	
	end
end
