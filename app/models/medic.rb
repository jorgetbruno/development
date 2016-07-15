class Medic < ActiveRecord::Base
	belongs_to :user
	validates :crm, presence: true, length: { minimum: 7, maximum: 13,
		message: ": Verifique se todo o CRM foi inserido e tente novamente"}

	validates :crm, format: { with: /(\d{4,10})[-]([A-Z]{2})/,
	message: ": Verifique se o CRM foi inserido no formato correto e tente novamente"}

end
