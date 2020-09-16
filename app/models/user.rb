class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :user_name, uniqueness: true, length: { in: 3..20 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
