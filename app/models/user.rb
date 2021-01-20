class User < ApplicationRecord
  has_many:posts
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, length: { minimum: 10 }
end