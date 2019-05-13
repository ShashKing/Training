class Department < ApplicationRecord
	has_many :users dependent: :destroty
end
