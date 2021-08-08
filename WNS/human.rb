class Human
    attr_accessor :strength, :intelligence, :health, :stealth
    
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    
    def display_stats
        puts "DISPLAYING STATS:"
        puts @strength
        puts @intelligence
        puts @stealth
        puts @health
        self
    end

    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            true
        else
            false
        end
    end
end

puts me = Human.new
# puts me.display_stats
puts me.health
puts me.attack(me)
puts me.display_stats



