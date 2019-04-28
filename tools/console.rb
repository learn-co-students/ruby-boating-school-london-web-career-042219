require 'pry'

require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
tom = Student.new("Tom")
mike = Student.new("Mike")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
#no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
#power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
#power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)



c1boat = BoatingTest.new("Spongbob", "tom bt", "passed", puff)
c2boat = BoatingTest.new("Patrick", "patrick bt", "passed", puff)
c3boat = BoatingTest.new("Tom", "tom bt", "passed", krabs)
c4boat = BoatingTest.new("Mike", "mike bt", "failed", krabs)
c5boat = BoatingTest.new("Mike", "mike btsecond", "passed", puff)
binding.pry
 #leave this here to ensure binding.pry isn't the last line

