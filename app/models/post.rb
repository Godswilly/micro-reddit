class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minumum: 4, maximum: 16 }
  validates :body, presence: true, length: { minimum: 15, maximum: 255 }
end
