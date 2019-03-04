class HomeController < ApplicationController

	def index
		@doctors = Doctor.all
		@cities = City.all
		@appointments = Appointment.all
	end

	def mobile
	end
	def career
		
	end


end
