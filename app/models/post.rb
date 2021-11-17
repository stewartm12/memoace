class Post < ApplicationRecord
  validates :description, :author, presence: true
  has_many :comments
end
