class AddCourseIdToMaterials < ActiveRecord::Migration
  def self.up
    add_column :materials, :course_id, :integer
  end

  def self.down
    remove_column :materials, :course_id
  end
end
