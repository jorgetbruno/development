class Patient < ActiveRecord::Base
	belongs_to :user

	validates :motherName                        ,length: {maximum: 100}, allow_blank: false
	validates :fatherName                        ,length: {maximum: 100}
	validates :occupation                        ,length: {maximum: 30}, allow_blank: false

end
