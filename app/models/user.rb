class User < ActiveRecord::Base
	has_many :admins
	has_many :patients
	has_many :medics
	has_many :nurses

	validates :name         , length: {maximum: 100}            , allow_blank: false
	#validates :birthday,	inclusion: { in: 1900..Date.today.year },format: { with: /(19|20)\d{2}/i},allow_blank: false

	validates :lot                        ,length: {minimum: 1}, allow_blank: false
	validates :block                      ,length: {minimum: 1}, allow_blank: false
	validates :number                     ,length: {minimum: 1}, allow_blank: false
	validates :street                     ,length: {maximum: 250}, allow_blank: true
	validates :neighborhood               ,length: {maximum: 250}, allow_blank: true
	validates :complement                 ,length: {minimum: 1}, allow_blank: false

	validates :city                       ,length: {maximum: 250}, allow_blank: true
	validates :state                      ,length: {maximum: 250}, allow_blank: true
	validates :country                    ,length: {maximum: 250}, allow_blank: true
	validates :cep                        ,length: {maximum: 250}, allow_blank: true

	validates :phoneOne     , length: {minimum: 10, maximum: 12}, allow_blank: true
	validates :phoneTwo     , length: {minimum: 10, maximum: 12}, allow_blank: false
	validates :phoneThree   , length: {minimum: 10, maximum: 12}, allow_blank: false

	validates :cpf          , length: {is: 11}                  , allow_blank: true
	validates :rg           , length: {maximum: 20}             , allow_blank: true
	validates :rgExpeditor  , length: {maximum: 11}             , allow_blank: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
