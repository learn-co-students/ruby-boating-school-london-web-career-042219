class BoatingTest

	attr_reader :instructor, :student, :test, :status

	@@all = []

	def initialize(instructor, student, test, status)
		@instructor = instructor
		@student = student
		@test = test
		@status = status
		@@all << self
	end

	def self.all
		@@all
	end

end
