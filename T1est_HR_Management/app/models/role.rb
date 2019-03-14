class Role < ApplicationRecord
	has_many :employees
	has_many :users
end
