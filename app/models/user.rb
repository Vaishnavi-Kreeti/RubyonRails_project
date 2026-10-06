class User < ApplicationRecord
  has_secure_password
  has_many :books
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be valid email" }
  validates :password, length: { minimum: 10, maximum: 12 }
end
