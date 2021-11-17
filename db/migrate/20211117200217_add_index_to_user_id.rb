class AddIndexToUserId < ActiveRecord::Migration[6.1]
  def change
    add_index :posts, :user_id
    add_index :comments, :user_id
  end
end
