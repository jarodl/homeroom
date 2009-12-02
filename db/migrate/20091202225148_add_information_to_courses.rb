class AddInformationToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :information, :text
  end

  def self.down
    remove_column :courses, :information
  end
end
