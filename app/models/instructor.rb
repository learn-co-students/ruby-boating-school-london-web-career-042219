class Instructor

  attr_reader :name

  @@all = []

  def initialize( name )
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student( student, test_name )
      boating_test( student, test_name, "passed")
  end

  def fail_student( student, test_name )
    boating_test( student, test_name, "failed")

  end

  def boating_test( student, test_name, passed_status )
    test = BoatingTest.find_test( student, test_name, self )

    if !test
      BoatingTest.new( student, test_name, self, passed_status )
    elsif test.passed_status!=passed_status
      test.passed_status=passed_status
    end

  end

end
