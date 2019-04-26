class Instructor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def student
    teachers_student = []
    BoatingTest.all.each do |data|
      if data.instructor == self
        teachers_student << data
      end
    end
    teachers_student
  end

  def pass_student(student, testname)
    #take in student argument and test_name
    #If there is a BoatingTest who name and
    # student match the values passed in
    # This method will update the test_status to passed
    # If no matching test this method will create the test

    BoatingTest.all.each do |test_data|
      if test_data.test_name == testname &&
        test_data.student.object_id == student.object_id

        test_data.test_status = "passed"
      else
        BoatingTest.new(student, testname, "passed", self.name)
      end
    end
    BoatingTest.all.last
  end

  def fail_student(student, testname)
    #oposite of above

    BoatingTest.all.each do |test_data|
      if test_data.test_name == testname &&
        test_data.student.object_id == student.object_id

        test_data.test_status = "failed"
      else
        BoatingTest.new(student, testname, "failed", self.name)
      end
    end
    BoatingTest.all.last
  end

end
