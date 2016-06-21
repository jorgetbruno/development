class User < ActiveRecord::Base
	has_many :admins
	has_many :patients
	has_many :medics
	has_many :nurses
	
	validates :name         , length: {is: 5}, allow_blank: true
	
	validates :lot          , length: {is: 5}, allow_blank: false
	validates :block        , length: {is: 5}, allow_blank: false
	validates :number       , length: {is: 5}, allow_blank: false
	validates :street       , length: {is: 5}, allow_blank: true
	validates :neighborhood , length: {is: 5}, allow_blank: true
	validates :complement   , length: {is: 5}, allow_blank: false
	
	validates :city         , length: {is: 5}, allow_blank: true
	validates :state        , length: {is: 5}, allow_blank: true
	validates :country      , length: {is: 5}, allow_blank: true
	validates :cep          , length: {is: 5}, allow_blank: true
	
	validates :phoneOne     , length: {is: 5}, allow_blank: true
	validates :phoneTwo     , length: {is: 5}, allow_blank: false
	validates :phoneThree   , length: {is: 5}, allow_blank: false
	
	validates :cpf          , length: {is: 5}, allow_blank: true
	validates :rg           , length: {is: 5}, allow_blank: true
	validates :rgExpeditor  , length: {is: 5}, allow_blank: true
	
	
	name
      
      t.integer :lot
      t.string  :block
      t.integer :number
      t.string  :street       , null: false
      t.string  :neighborhood , null: false
      t.string  :complement
      
      t.string  :city         , null: false
      t.string  :state        , null: false
      t.string  :country      , null: false
      t.integer :cep          , null: false
      
      t.integer :phoneOne     , null: false
      t.integer :phoneTwo  
      t.integer :phoneThree
      
      t.integer :cpf          , null: false
      t.integer :rg           , null: false
      t.integer :rgExpeditor  , null: false
      
      t.date    :birthday     , null: false
	
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
