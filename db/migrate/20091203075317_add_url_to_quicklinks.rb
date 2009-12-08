class AddUrlToQuicklinks < ActiveRecord::Migration
  def self.up
    add_column :quicklinks, :url, :string
  end

  def self.down
    remove_column :quicklinks, :url
  end
end
