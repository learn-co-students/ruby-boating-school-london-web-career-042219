class Instructor

	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def pass_student(name, test)
		find_student.select {|test| test.status = "Pass"}
	end
end
