class BoatingTest
    @@all = []
    attr_reader :test_name, :student, :instructor
    attr_accessor :status

    def initialize(student, test_name, status="pending", instructor)
        @student = student
        @test_name = test_name
        @instructor = instructor
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tests_by_student(student, status="any")
        if status == "any"
            return @@all.select { |test| test.student == student }
        else
            return @@all.select { |test| test.student == student && test.status == status }
        end
    end

    # def self.test_by_name(student, test_name)
    #     return @@all.find{ |test| test.student == student && test.test_name == name }
    # end
end
