class RenameUserToUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :user, :user_id
    rename_column :posts, :user, :user_id
  end
end
