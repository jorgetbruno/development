class Medic < ActiveRecord::Base
	belongs_to :user
	validates :crm, presence: true, length: { minimum: 4, maximum: 10 }
	validates :emailM, confirmation: true
	validates :emailM_confirmation, presence: true
end
 	 	 