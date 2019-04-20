class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :role 
         belongs_to :gender
         has_many :subjects, dependent: :destroy
         has_many :addresses, dependent: :destroy


end
