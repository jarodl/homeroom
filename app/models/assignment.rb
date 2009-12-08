class Assignment < ActiveRecord::Base
  has_many :grades
  has_attached_file :upload
  has_many :comments
  has_many :users, :through => :comments

  validates_presence_of :points, :due, :course_id, :name
end
