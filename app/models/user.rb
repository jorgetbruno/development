class User < ActiveRecord::Base
	has_many :admins
	has_many :patients
	has_many :medics
	has_many :nurses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
