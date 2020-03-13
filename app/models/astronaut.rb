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

  # list of missions for given astro
  def missions
    Mission.all.map do |mission|
        mission.astronaut == self
    end
  end

  def join_shuttle(shuttle, launch_date)
    Mission.new(self, shuttle, launch_date)
    #TODO add logic for capacity
  end   

  def self.most_missions
    # TODO: returns astro w/ most missions

    most_missions = 0
    astronaut_with_most_missions = nil

    Astronaut.all.each do |astronaut|
      if astronaut.missions.count > most_missions
        astronaut_with_most_missions = astronaut
        most_missions = astronaut.missions.count
      end
    end
    return astronaut_with_most_missions
  end
  


end
