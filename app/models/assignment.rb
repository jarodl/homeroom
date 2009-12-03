class Assignment < ActiveRecord::Base
  has_many :grades, :through => :students
  has_attached_file :upload
end
