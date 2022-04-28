class User < ApplicationRecord
  has_secure_password 
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end