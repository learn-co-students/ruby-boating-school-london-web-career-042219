require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Peter Pan")
s2 = Student.new("Derek")
s3 = Student.new("Ant Man")

i1 = Instructor.new("Ironman")
i2 = Instructor.new("Thor")
i3 = Instructor.new("Spiderman")

boatingtest1 = BoatingTest.new(i1, s2, "Flying 101", "Pass")
boatingtest2 = BoatingTest.new(i3, s1, "Climbing 101", "Pass")
boatingtest3 = BoatingTest.new(i2, s3, "Throwing 101", "Pass")

boatingtest4 = BoatingTest.new(i2, s1, "Throwing 201", "fail")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

