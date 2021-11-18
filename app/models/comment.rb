# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  post_id     :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#
class Comment < ApplicationRecord
  validates :description, :user_id, :post_id, presence: true

  belongs_to :post
  belongs_to :user
  has_many :likes, as: :liked_type
  has_many :liked_users, through: :likes, source: :user
end
