class AddProfessorIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :professor_id, :integer
  end

  def self.down
    remove_column :courses, :professor_id
  end
end
