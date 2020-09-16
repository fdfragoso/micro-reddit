class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :body, length: { in: 15..150 }
end
