class Student < User
  has_and_belongs_to_many :courses, :foreign_key => 'student_id'
end
