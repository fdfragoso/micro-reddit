class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :user_name, uniqueness: true, length: { in: 5..20 }
end
