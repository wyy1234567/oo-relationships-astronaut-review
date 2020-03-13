class Mission

    attr_accessor :launch_date, :astronaut, :shuttle 
    @@all = []

    def initialize(astronaut, shuttle, launch_date)
        @astronaut = astronaut
        @shuttle = shuttle
        @launch_date = launch_date
        Mission.all << self 
    end

    def self.all 
        @@all
    end


end
