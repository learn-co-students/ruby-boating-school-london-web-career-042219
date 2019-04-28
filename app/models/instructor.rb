class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.pass_student(student, boat_test_name)
        BoatingTest.all.map do |bt| 
                if BoatingTest.student == student && BoatingTest.boat_test_name == boat_test_name 
            BoatingTest.stauts = "passed"
                end
            end
    end

    
    def self.pass_student(student, boat_test_name)
        BoatingTest.all.map do |bt| 
                if BoatingTest.student == student && BoatingTest.boat_test_name == boat_test_name 
            BoatingTest.stauts = "failed"
                end
            end
    end


end
