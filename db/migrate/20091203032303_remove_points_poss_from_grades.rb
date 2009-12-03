class RemovePointsPossFromGrades < ActiveRecord::Migration
  def self.up
    remove_column :grades, :points_poss
  end

  def self.down
    add_column :grades, :points_poss, :integer
  end
end
