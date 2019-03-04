class Doctor < ApplicationRecord
	has_many :patients

	def self.doc_name
		return "Calling from Model"
	end

	def upcoming_patients
		# patients.joins(:appointments).where("appointments.date >= ?", Date.today)
		self.name = "my new name"
		self.save
		return name
	end
end
