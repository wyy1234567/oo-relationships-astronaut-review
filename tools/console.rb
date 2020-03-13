require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#write your test code in here



puts "Let's go to space!" # just in case pry is buggy and exits

a = Astronaut.new("Brett", 28, "beer")
b = Astronaut.new("Yueying", 25, "Chinese")
c = Astronaut.new("Josh", 34, "Fusion stuffs")
d = Astronaut.new("Elliott", 72, "biology")

shut1 = Shuttle.new("T", 3)

shut1.add_astronaut

binding.pry 



"something else"

