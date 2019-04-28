require 'pry'

class BoatingTest

    @@all = []
    attr_reader :student, :test_name, :instructor, :test_status
    attr_writer :test_status
  
    #how to I refer to a boatingTest instance?
  def initialize(student,test_name,test_status,instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    #binding.pry
  
    @@all << self
    
  end 

  def self.all
    @@all
  end 


end
  
class Dog
    def name=(dog_name)
      @this_dogs_name = dog_name
    end
   
    def name
      @this_dogs_name
    end
  end 