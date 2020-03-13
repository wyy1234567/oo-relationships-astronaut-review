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

    def current_astronauts
       Mission.all.select do |mission|
          mission.shuttle == self
       end.map do |mission|
           mission.astronaut
       end #TODO:
    end

    def add_astronaut(astronaut, launch_date)
        if self.current_astronauts.count > @capacity 
            return "This shuttle is at capacity"
        end
        Mission.new(astronaut, self, launch_date)
        #TODO: 
        
    end

    def self.find_by_model(model)
        Shuttle.all.find do |shuttle|
            shuttle.model == model
        end
        #returns shuttle instance

    end

    

    


    
end
