class RemoveUserId < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user_id
    remove_column :comments, :user_id
  end
end
