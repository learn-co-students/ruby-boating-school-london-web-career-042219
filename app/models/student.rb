class Student
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def add_boating_test(instructor, test, status)
		BoatingTest.new(instructor, self, test, status)
	end

	def find_student
		BoatingTest.all.select {|test| test.student == self }
	end

	def passing_tests
		find_student.select {|test| test.status == "Pass"}
	end

	def grade_percentage
		passing_tests.length / find_student.length.to_f * 100
	end

end
