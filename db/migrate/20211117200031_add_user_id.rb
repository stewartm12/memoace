class AddUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id, :bigint
    add_column :comments, :user_id, :bigint
  end
end
