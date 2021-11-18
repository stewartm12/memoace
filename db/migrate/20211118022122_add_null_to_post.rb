class AddNullToPost < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :description, false
    change_column_null :posts, :user_id, false
  end
end
