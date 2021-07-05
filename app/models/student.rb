class Student
  @@all = []

  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    #initialize a new boatingtest using (student, test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(firstname)
    #take the first_name argument
    #output student object with that name
    self.all.select do |student| if student.first_name == firstname
      student
    end
    end
  end

  def grade_percentage
    #return the percentage of test passed as a float
    # 3 passed out of 9 = 33.33 (3/9=3.33)

    tests_taken = 0
    tests_passed = 0

    BoatingTest.all.select do |test_data|
      if test_data.student.object_id == self.object_id && test_data.test_status == "passed"
        tests_passed += 1
      end
      if
        test_data.student.object_id == self.object_id
        tests_taken += 1
      else nil
      end
    end
    if tests_passed > 0
      answer = tests_passed / tests_taken.to_f * 100
      answer.round(2)
    else
      "Sorry #{self.first_name} failed 100% of tests taken"
    end
  end

end
