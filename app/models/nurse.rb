class Nurse < ActiveRecord::Base
	has_one :user, :as => :profileable


  accepts_nested_attributes_for :user,  :allow_destroy => true

	validates :coren, length: { is: 5 },numericality: { only_integer: true },allow_blank: false
end
