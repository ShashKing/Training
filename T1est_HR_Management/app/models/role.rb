class Role < ApplicationRecord
	has_many :employees
	has_many :user
end
