class Instructor
  @@all = []

  def initialize(name)
    @name = name
  end

  def pass_student(student, test_name)
    student.get_test(test_name).status = "passed"
  end

  def fail_student(student, test_name)
    student.get_test(test_name).status = "failed"
  end
end
