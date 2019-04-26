require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Student Tests ###
sandy_student = Student.new("Sandy")
spongebob_student = Student.new("Spongebob")
plancton_student = Student.new("Plancton")
patrick_student = Student.new("Patrick")
squidworth_student = Student.new("Squidworth")

### Instructor Tests ###
mrs_puff = Instructor.new("Mrs Puff")
mr_krabs = Instructor.new("Mr Krabs")
lauren = Instructor.new("Lauren")

### Boatingtest Tests ###
st1 = BoatingTest.new(sandy_student, "Sailing First Timers", "failed", mrs_puff)
st2 = BoatingTest.new(sandy_student, "Don't Crash 101", "passed", mrs_puff)
st3 = BoatingTest.new(sandy_student, "How to Sail 101", "failed", mrs_puff)
sbt1 = BoatingTest.new(spongebob_student, "Don't Crash 101", "failed", mr_krabs)
sbt2 = BoatingTest.new(spongebob_student, "Don't give up trying", "failed", mr_krabs)
sbt3 = BoatingTest.new(spongebob_student, "Don't Crash 101", "failed", mr_krabs)
pt1 = BoatingTest.new(plancton_student, "Power Steering", "failed", lauren)
pt2 = BoatingTest.new(plancton_student, "Don't Crash 101", "failed", lauren)
pt3 = BoatingTest.new(plancton_student, "Don't give up trying", "passed", lauren)
st1 = BoatingTest.new(squidworth_student, "Don't Crash 101", "passed", mr_krabs)
pat1 = BoatingTest.new(patrick_student, "Advanced Sailing", "passed", mrs_puff)


# student.add_boating_test(self, test_name, test_status, instructor)
#### BoatingTest.new(self, test_name, test_status, instructor)

#

binding.pry
puts "Mischief Managed!"
