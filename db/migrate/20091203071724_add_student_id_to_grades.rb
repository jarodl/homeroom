class AddStudentIdToGrades < ActiveRecord::Migration
  def self.up
    add_column :grades, :student_id, :integer
  end

  def self.down
    remove_column :grades, :student_id
  end
end
