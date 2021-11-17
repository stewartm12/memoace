class RenameAuthorInComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :author, :user
  end
end
