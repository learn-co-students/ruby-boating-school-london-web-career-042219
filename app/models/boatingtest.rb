class BoatingTest


    attr_reader :student, :boat_test_name, :instructor 
    attr_accessor :status

    @@all = []

    def initialize(student, boat_test_name, status, instructor)
        @student = student
        @status = status
        @instructor = instructor
        @boat_test_name = boat_test_name
        @@all << self

    end


    def self.all
        @@all
    end
   

end