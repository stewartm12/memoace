class Post < ApplicationRecord
  validates :description, :user_id, presence: true
  has_many :comments
end
