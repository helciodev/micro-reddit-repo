class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
