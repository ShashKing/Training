class Subject < ApplicationRecord
	belongs_to :examtype
	belongs_to :user
end
