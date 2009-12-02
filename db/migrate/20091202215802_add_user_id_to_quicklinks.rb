class AddUserIdToQuicklinks < ActiveRecord::Migration
  def self.up
    add_column :quicklinks, :user_id, :integer
  end

  def self.down
    remove_column :quicklinks, :user_id
  end
end
