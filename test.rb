require_relative "app/models/teacher"
require_relative "app/models/student"
require_relative "app/models/teaching"

teaching = Teaching.find(3)

p teaching.student
puts ""
p teaching.teacher