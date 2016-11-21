class Patient < ActiveRecord::Base
  has_one :user, :as => :profileable


  accepts_nested_attributes_for :user,  :allow_destroy => true
  #:reject_if => lambda { |a| a[:content].blank? },

	validates :motherName                        ,length: {maximum: 100}, allow_blank: false
	validates :fatherName                        ,length: {maximum: 100}
	validates :occupation                        ,length: {maximum: 30}, allow_blank: false

end
