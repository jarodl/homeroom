class AddAssignmentIdToGrades < ActiveRecord::Migration
  def self.up
    add_column :grades, :assignment_id, :integer
  end

  def self.down
    remove_column :grades, :assignment_id
  end
end
