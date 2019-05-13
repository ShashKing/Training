class User < ApplicationRecord
	validates :user_name, presence: true
	validates :terms_of_service, acceptance: {message: 'Terms and conditions are not accepted'}
	validates :email, presence: {message: 'Email is cumpolsary'}, uniqueness: true
	belongs_to :department
	has_one :account
	has_many :appointments
	has_many :doctors, :through => :appointments
	has_one :account_history, :through => :account
	before_validation :ensure_login_has_a_value
	private
	def ensure_login_has_a_value
		if email.nil?
			self.email = email unless email.blank?
		end
	end
end
