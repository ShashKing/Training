class User < ApplicationRecord
	validates :user_name, presence: true
	validates :terms_of_service, acceptance: {message: 'Terms and conditions are not accepted'}
	validates :email, presence: {message: 'Email is cumpolsary'}, uniqueness: true
	belongs_to :department
end
