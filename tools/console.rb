require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jeff = Student.new("Jeff")
ross = Student.new("Ross")
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

nico = Instructor.new("Nico")
sam = Instructor.new("Sam")
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

#test1 = BoatingTest.new(jeff,"test1","in_progress",nico)
#test2 = BoatingTest.new(ross,"test2","passed",sam)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

puff.fail_student(spongebob, "Don't Crash 101")
#puff.pass_student(patrick, "Power Steering 202")
sam.fail_student(ross, "TEST")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

