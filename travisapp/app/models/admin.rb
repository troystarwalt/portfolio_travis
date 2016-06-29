class Admin < ActiveRecord::Base

	has_many :recipes, dependent: :destroy
	validates :username, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}
	validates :password, presence: true, length: { minimum: 6 }
	has_secure_password
	
end