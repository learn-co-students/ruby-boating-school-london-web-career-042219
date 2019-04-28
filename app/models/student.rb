
class Student

      attr_accessor :name 

      @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def self.find_student(student)
      BoatingTest.all.select { |boatingTest| boatingTest.student == student }
    end

    def add_boating_test( boat_test_name, status, instructor)
        BoatingTest.new(self, boat_test_name, status, instructor)
    end

    def self.passed_test(student,status)
        BoatingTest.all.select do |bt| 
            BoatingTest.student == student && BoatingTest.status == "passed"
        end
    end


    def self.grade_percentage(student)
        self.find_student 
    end



   
end
