

class BoatingTest

  attr_accessor :student, :bt_name, :bt_status, :instructor

  @@all = []
  #BoatingTest.all.length gives me the number of testss

  def initialize(student, bt_name, bt_status, instructor)
    @student = student
    @bt_name = bt_name
    @bt_status = bt_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end



end
