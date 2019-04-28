class Student

    @@all = []
    attr_accessor :student, :test_name, :test_status, :instructor, :first_name
  #Is studnt == first_name?
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end
  
  def self.all
    @@all
  end

  #should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end
  
  #will take in a first name and output the student (Object) with that name
  def self.find_student(first_name)
    "something"
  end

end
