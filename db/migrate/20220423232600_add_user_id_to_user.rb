class AddUserIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :kid, :user_id, :int 
  end
end
