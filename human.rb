class Human

    def initialize
        puts "YEEEEEEET"
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack
        puts "ATTACKING"
        @health -= 10
    end

    def display_stats
        puts @health
        puts @stealth
        puts @strength
        puts @intelligence
    end
end

puts me = Human.new
puts me.display_stats
puts me.attack
