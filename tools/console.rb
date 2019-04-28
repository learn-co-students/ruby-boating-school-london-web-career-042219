require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

  marcus = Student.new("Marcus")
  fred = Student.new("Fred")
  jill = Student.new("Jill")

  found_fred=Student.find_student("Fred")

  sam = Instructor.new("Sam")
  ian = Instructor.new("Ian")
  nico = Instructor.new("nico")

#  test1 = BoatingTest.new( marcus, "Lesson 1", sam, "passed" )
#  test2 = BoatingTest.new( marcus, "Lesson 2", sam, "failed" )
#  test3 = BoatingTest.new( marcus, "Lesson 3", sam )

#  test5 = BoatingTest.new( fred, "Lesson 1", sam)
#  test6 = BoatingTest.new( fred, "Lesson 2", sam )
#  test7 = BoatingTest.new( jill, "Lesson 3", sam )
#  test8 = BoatingTest.new( jill, "Lesson 4", sam )

#  test9 = BoatingTest.new( fred, "Lesson 3", ian )
#  test10 = BoatingTest.new( fred, "Lesson 4", ian )
#  test11 = BoatingTest.new( jill, "Lesson 1", ian )
#  test12 = BoatingTest.new( jill, "Lesson 2", ian )

  nico.pass_student( jill, "Lesson 5")
  nico.fail_student( jill, "Lesson 5")
  nico.pass_student( jill, "Lesson 5")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
