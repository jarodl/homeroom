class Assignment < ActiveRecord::Base
  has_many :grades, :through => :students
end
