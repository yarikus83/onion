class RemovePasswordFromUsers < ActiveRecord::Migration
  def up
  remove_column :users, :password
  end

  def change
    add_column :users, :password_digest, :string
  end
end
