class Mammal
    
    def initialize
        puts "I am alive"
        @health = 150
        # self
    end

    def display_health
        puts @health
    end
end
puts mammal = Mammal.new
mammal.display_health
