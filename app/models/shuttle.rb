class Shuttle

    attr_accessor :model, :capacity
    @@all =[]

    def initialize(model, capacity)
        @model = model
        @capacity = capacity
        Shuttle.all << self 
    end

    def self.all 
        @@all 
    end

    def add_astronaut(astronaut, launch_date)
        Mission.new(astronaut, self, launch_date)
    end

    #to do: current_astronaut


    
end
