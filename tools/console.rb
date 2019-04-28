require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

emma = Student.new("Emma")
sarah = Student.new("Sarah")
phil = Student.new("Phil")

teacher = Instructor.new("Teacher")
coach = Instructor.new("Coach")
prof = Instructor.new("Prof")


march = BoatingTest.new(emma, "March", "passed", teacher)
april = BoatingTest.new(sarah, "April", "failed", teacher)
may = BoatingTest.new(phil, "May", "passed", teacher)
june = BoatingTest.new(emma, "June", "passed", coach)
july = BoatingTest.new(sarah, "July", "failed", coach)
august = BoatingTest.new(phil, "August", "passed", prof)







# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
