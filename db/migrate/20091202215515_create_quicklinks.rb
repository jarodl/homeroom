class CreateQuicklinks < ActiveRecord::Migration
  def self.up
    create_table :quicklinks do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :quicklinks
  end
end
