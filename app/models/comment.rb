class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :author_name, presence: true
  validates :body, length: {in: 15..500}
  validates :user_id, presence: true
  validates :post_id, presence: true
end
