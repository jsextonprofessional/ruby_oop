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
end
