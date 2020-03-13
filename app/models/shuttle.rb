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
        #to do: current_astronaut
        
    end

    def self.find_by_model(model)
        Shuttle.all.find do |shuttle|
            shuttle.model == model
        end
        #returns shuttle instance

    end

    

    


    
end
