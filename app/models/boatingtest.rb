class BoatingTest

  attr_reader :student, :test_name, :instructor
  attr_accessor :passed_status

  @@all = []

  def initialize( student, test_name, instructor, passed_status="not set" )

      @student=student
      @test_name=test_name
      @instructor=instructor
      @passed_status=passed_status
      @@all << self
  end

  def self.all
    @@all
  end

  def self.find_test( student, test_name, instructor )
      all.find { |test| test.student==student && test.test_name==test_name && test.instructor==instructor }
  end

end
