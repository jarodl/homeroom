class Material < ActiveRecord::Base
  belongs_to :course
  has_attached_file :upload
end
