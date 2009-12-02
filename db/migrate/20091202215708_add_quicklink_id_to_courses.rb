class AddQuicklinkIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :quicklink_id, :integer
  end

  def self.down
    remove_column :courses, :quicklink_id
  end
end
