class Student < User
  has_and_belongs_to_many :courses, :uniq => true
  has_many :grades
end

