class AddSyllabusToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :syllabus_file_name, :string
    add_column :courses, :syllabus_content_type, :string
    add_column :courses, :syllabus_file_size, :integer
    add_column :courses, :syllabus_updated_at, :datetime
  end

  def self.down
    remove_column :courses, :syllabus_updated_at
    remove_column :courses, :syllabus_file_size
    remove_column :courses, :syllabus_content_type
    remove_column :courses, :syllabus_file_name
  end
end
