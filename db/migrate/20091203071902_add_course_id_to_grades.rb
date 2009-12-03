class AddCourseIdToGrades < ActiveRecord::Migration
  def self.up
    add_column :grades, :course_id, :integer
  end

  def self.down
    remove_column :grades, :course_id
  end
end
