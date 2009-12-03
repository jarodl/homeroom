class AddPointsToAssignments < ActiveRecord::Migration
  def self.up
    add_column :assignments, :points, :integer
  end

  def self.down
    remove_column :assignments, :points
  end
end
