class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       length: { minimum: 4, maximum: 25 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze }

  validates :password, presence: true, length: { minimum: 4, maximum: 25 }
end
