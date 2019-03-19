class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :role
 			   belongs_to :gender 
 			   belongs_to :designation
 			   belongs_to :department
 			   has_many :addresses
 			   accepts_nested_attributes_for :addresses
 			   validates :first_name, :last_name, :email, :password, :permanent_address, :current_salary,:employee_code, presence: true
end
