require 'pry'

class Student

    @@all = []
    attr_accessor :student, :test_name, :test_status, :instructor, :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end
  
  #will take in a first name and output the student (Object) with that name
  def self.find_student(first_name)
    self.all.find {|student| student.first_name = first_name}
  end

  #should return the percentage of tests that the student has passed 
  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student.first_name == self.first_name}
    passed_tests = tests.select {|test| test.test_status == "passed"}
    per = (passed_tests.length.to_f / tests.length.to_f)*100
   
  end


end
