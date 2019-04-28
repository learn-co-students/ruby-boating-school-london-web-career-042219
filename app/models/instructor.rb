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

    def pass_student(student, test_name)
        test = BoatingTest.tests_by_student(student).find { |test| test.test_name == test_name }
        if test == nil
            BoatingTest.new(student, test_name, "passed", self)
        else
            test.status = "passed"
        end
    end

    def fail_student(student, test_name)
        test = BoatingTest.tests_by_student(student).find { |test| test.test_name == test_name }
        if test == nil
            BoatingTest.new(student, test_name, "failed", self)
        else
            test.status = "failed"
        end
    end
end
