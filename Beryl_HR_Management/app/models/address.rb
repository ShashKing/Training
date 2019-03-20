class Address < ApplicationRecord
	belongs_to :employee
	#validates :ad_name, presence: true
end
