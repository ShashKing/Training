class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token
	before_action :authenticate

	protected

		def authenticate
 			authenticate_or_request_with_http_basic do |email, password|
    	email == "foo" && password == "bar"
  	end
	end
end
