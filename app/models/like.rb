# == Schema Information
#
# Table name: likes
#
#  id              :bigint           not null, primary key
#  liked_type_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  liked_type_id   :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_likes_on_liked_type  (liked_type_type,liked_type_id)
#
class Like < ApplicationRecord
  belongs_to :liked_type, polymorphic: true
  belongs_to :user
end
