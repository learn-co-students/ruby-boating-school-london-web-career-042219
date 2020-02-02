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

    def self.find_student(first_name)
        @@all.find{ |student| student.first_name == first_name }
    end 

    def add_boating_test(test_name, status="pending", instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end
    
    def grade_percentage
        passed = BoatingTest.tests_by_student(self,"passed").length.to_f
        total = BoatingTest.tests_by_student(self).length.to_f

        return passed/total
    end

end
