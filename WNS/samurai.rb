require_relative 'human'
class Samurai < Human
    @@count = 0

    def initialize
        puts "SAMURAI SPAWN"
        super
        @health = 200
        @@count += 1
        # self
    end

    def death_blow(obj)
        puts "BLOWING:"
        if obj.class.ancestors.include?(Human)
            obj.health = 0
        end
    end

    def meditate
        puts "AUM:"
        @health = 200
    end

    def how_many
        @@count
    end
end

puts sam = Samurai.new
puts sam.display_stats
puts sam.death_blow(sam)
puts sam.display_stats
puts sam.meditate
puts sam.display_stats
puts sam.how_many