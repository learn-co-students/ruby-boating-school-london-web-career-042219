require 'pry'
class Instructor

  @@all = []
  attr_reader :instructor_name

  def initialize(name)
    @instructor_name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def fail_student(student_inst, test_name)
  
    if BoatingTest.all.select {|boat_test| boat_test.student.first_name == student_inst.first_name && test_name == boat_test.test_name } == []
      test_name = BoatingTest.new(student_inst,test_name,"failed",self)
    else
      BoatingTest.all.each do |t1|
        if t1.student.first_name == student_inst.first_name && test_name == t1.test_name 
          t1.test_status = "failed"
          break         
        end
      end
    end
  end
    

  def pass_student(student_inst, test_name)

    if BoatingTest.all.select {|boat_test| boat_test.student.first_name == student_inst.first_name && test_name == boat_test.test_name } == []
      test_name = BoatingTest.new(student_inst,test_name,"passed",self)
    else
      BoatingTest.all.each do |t1|
        if t1.student.first_name == student_inst.first_name && test_name == t1.test_name 
          t1.test_status = "passed"
          break         
        end
      end
    end
  end
end
