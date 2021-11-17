class RenamePasswordToEncrypted < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :password, :encrypted_password
  end
end
