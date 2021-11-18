# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
class Post < ApplicationRecord
  validates :description, :user_id, presence: true

  belongs_to :user
  has_many :likes, as: :liked_type
  has_many :liked_users, through: :likes, source: :user
end
