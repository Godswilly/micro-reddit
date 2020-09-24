class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :comment_text, presence: true, length: { minimum: 4, maximum: 250 }
end
