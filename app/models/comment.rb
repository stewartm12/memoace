class Comment < ApplicationRecord
  validates :description, :author, :post_id, presence: true
  belongs_to :post
end
