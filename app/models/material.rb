class Material < ActiveRecord::Base
  belongs_to :course
  has_attached_file :upload

  validates_presence_of :name, :course_id
end
