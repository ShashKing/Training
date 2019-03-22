class Skill < ApplicationRecord
	has_and_belongs_to_many :employees, dependent: :destroy
end
