class Employee < ApplicationRecord
	belongs_to :department
	belongs_to :role
	belongs_to :gender
end
