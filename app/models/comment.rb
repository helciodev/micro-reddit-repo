class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 500, minimum: 10 }
  belongs_to :user
  belongs_to :post
end
