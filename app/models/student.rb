
class Student

  attr_reader :student

  @@student = []

  def initialize(student)
    @student = student
    @@student << self
  end

  def self.all
    @@student
  end

  def add_boating_test(bt_name, bt_status, instructor) #working
    BoatingTest.new(self, bt_name, bt_status, instructor)
  end


  def tests
    BoatingTest.all.select {|test| test.student == self }
  end

  def passed_tests
    tests.select {|test| test.bt_status == "passed"}
  end

  # passed_tests_num ber = passed_tests.
  #Should return the percentage of tests that hte student has passed, a Float (so, if a student has passed 3/9 tests that they've taken, this method should return the Float 33.33)
  def grade_percentage

    number_of_tests = tests.length.to_f
    passed = passed_tests.length.to_f

   (( passed / number_of_tests )*100).round(2)

  end

  def self.find_student(student)
    Student.all.find {|students_name| students_name.student == student}
    #   will take in a first name (student) and output the student's object with that name. so students_name is still a first mame which is why it's confusing.
  end


end
