class User < ApplicationRecord
    has_many :comments
    has_many :posts

    validates :user_name, presence: true, length: { minimum: 4, maximum: 20 }
end
