class Course < ActiveRecord::Base
  belongs_to :professor, :class_name => "Professor"
  has_many :assignments

  has_and_belongs_to_many :students, :class_name => "Student", :uniq => true

  validates_presence_of :title

  def students=(students_to_add)
    students_to_add.each do |student|
      self.students << student
    end
  end
end
