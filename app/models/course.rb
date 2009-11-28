class Course < ActiveRecord::Base
  belongs_to :professor, :class_name => "Professor"

  has_and_belongs_to_many :students, :class_name => "Student"

  validates_presence_of :title
end
