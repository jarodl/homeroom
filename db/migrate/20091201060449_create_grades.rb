class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
      t.integer :points_poss
      t.integer :points_earned

      t.timestamps
    end
  end

  def self.down
    drop_table :grades
  end
end
