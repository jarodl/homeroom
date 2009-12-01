class Professor < User
  has_many :courses, :uniq => true
end
