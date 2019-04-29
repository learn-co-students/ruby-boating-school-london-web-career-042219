class Student
  @@all = []
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, instructor, status)
  end

  def self.find_student(name)
    @@all.find{|student| student.name == name}
  end

  def get_tests
    BoatingTest.all.select{|test| test.student == self}
  end

  def get_test(name)
    get_tests.find{|test| test.name == name}
  end

  def grade_percentage
    passed = 0
    get_tests.each do |test|
      if(test.status == "passed")
        passed += 1
      end
    end
    (passed / get_tests.length) * 100
  end
end
