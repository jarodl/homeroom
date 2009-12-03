class AddUploadToAssignments < ActiveRecord::Migration
  def self.up
    add_column :assignments, :upload_file_name, :string
    add_column :assignments, :upload_content_type, :string
    add_column :assignments, :upload_file_size, :integer
    add_column :assignments, :upload_updated_at, :datetime
  end

  def self.down
    remove_column :assignments, :upload_updated_at
    remove_column :assignments, :upload_file_size
    remove_column :assignments, :upload_content_type
    remove_column :assignments, :upload_file_name
  end
end
