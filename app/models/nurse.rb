class Nurse < ActiveRecord::Base
	belongs_to :user

	validates :coren, length: { is: 5 },numericality: { only_integer: true },allow_blank: false
end
