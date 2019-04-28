


class Instructor

  attr_reader :instructor

  @@all = []

  def initialize(instructor)
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def tests_by_instructor
    BoatingTest.all.select {|test| test.instructor == self}
  end

  def pass_student(student, test_name) #take these as objects??
    tests_to_pass = tests_by_instructor.find {|test| test.student == student && test.bt_name == test_name}
    if tests_to_pass == nil
      BoatingTest.new(student, test_name, "passed", self)
    else
      tests_to_pass.bt_status = "passed"
    end

  end

  def fail_student(student, test_name) #I should pry test_name as a string
    tests_to_fail = tests_by_instructor.find {|test| test.student == student && test.bt_name == test_name}
    if tests_to_fail == nil
      BoatingTest.new(student, test_name, "failed", self)
    else
      tests_to_fail.bt_status = "failed"
    end
  end



      # test = BoatingTest.all.find {|test| test.student == student && test.bt_name == test_name}
      # if test == nil
      #   BoatingTest.new(student, test_name, "passed", self)
      # else
      #   test.bt_status = "passed"


  # @bt_status = "passed"
# else
#   BoatingTest.new(student, test_name.to_s, "passed", self)

  #If there is a BoatingTest whose name and student match the values passed in, this method should update the status of the BoatingTest to passed. If there is no matching test, this method should create a test with the student, the boat test name, and the status passed. Either way, it should return the Boating Test instance.
end
