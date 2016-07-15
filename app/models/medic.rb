class Medic < ActiveRecord::Base
	belongs_to :user
	validates :crm, presence: true, length: { minimum: 7, maximum: 13,
		message: ": Verifique se todo o CRM foi inserido e tente novamente"}

	validates :crm, format: { with: /(\d{4,10})[-]([A-Z]{2})/,
	message: ": Verifique o CRM inserido e tente novamente"}

end
