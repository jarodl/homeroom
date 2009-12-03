class Assignment < ActiveRecord::Base
  has_many :grades
  has_attached_file :upload

  validates_presence_of :points, :due, :course_id, :name
end
