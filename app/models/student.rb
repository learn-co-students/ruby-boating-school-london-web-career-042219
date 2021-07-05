class Student

  attr_reader :first_name

  @@all = []

  def initialize( first_name )
    @first_name=first_name
    @@all << self
  end

  def self.all
    #return all of the student instances
    @@all
  end

  def add_boating_test( student, test_name, test_status)
    #should initialize a new boating test with a Student (Object),
    #a boating test name (String),
    #a boating test status (String), and an Instructor (Object)

    BoatingTest.new( student, test_name, self, test_status )

  end

  def  self.find_student( name )
    #will take in a first name and output the student (Object) with that name
    @@all.find {|a| a.first_name==name}
  end

  def tests
    BoatingTest.all.select {|test| test.student==self }
  end

  def passed_tests
      tests.select{ |test| test.passed_status=="passed" }
  end

  def grade_percent
    #should return the percentage of tests that the student has passed,
    #a Float (so if a student has passed 3 / 9 tests that they've taken,
    #this method should return the Float 33.33)
      count_passed = passed_tests.length.to_f
      count_taken = tests.length.to_f
      (( count_passed / count_taken ) * 100).round(2)
  end
end
