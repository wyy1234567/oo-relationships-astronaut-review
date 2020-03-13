class Astronaut
  attr_accessor :name, :age, :specialty
  @@all = []

  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty
    Astronaut.all << self 
  end

  def self.all 
    @@all 
  end

  def shuttles
    Mission.all.select do |mission|
        mission.astronaut == self
    end.map do |mission|
        mission.shuttle
    end.uniq

  end

  def astronaut_missions
    Mission.all.map do |mission|
        mission.astronaut == self
    end
  end

  def join_shuttle(shuttle, launch_date)
    Mission.new(self, shuttle, launch_date)
    #TODO add logic for capacity
  end   

  def self.most_missions
    missions.max_by do |mission|
        mission.astronaut == self
    end
  end
  


end
