class AddReferenceToComments < ActiveRecord::Migration[6.1]
  def change
    change_column_null :comments, :description, false
    change_column_null :comments, :user_id, false
  end
end
