class Comment < ApplicationRecord
  validates :description, :user_id, :post_id, presence: true
  belongs_to :post
end
