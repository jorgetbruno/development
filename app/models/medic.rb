class Medic < ActiveRecord::Base
	belongs_to :user
	validates :crm, presence: true, length: { minimum: 7, maximum: 13,
		message: ": Verifique o CRM inserido e tente novamente"}

	validates :crm, format: { with: /(\d{4,10})[-]([A-Z]{2})/, 
	message: ": Verifique o CRM inserido e tente novamente"}

	validates :ddnM, format: { with: /\d\d[-]\d\d[-]\d\d\d\d/,
		message: ": Verifique a data de Nascimento inserida e tente novamente"}

	validates :cpfM, presence: true, length: { maximum: 14,
		message: ": Verifique o CPF inserido e tente novamente"}	

	validates :cpfM, format: { with: /(\d\d\d)[.](\d\d\d)[.](\d\d\d)[-](\d\d)/,
		message: ": Verifique o CPF inserido e tente novamente"}
end
 	 	 