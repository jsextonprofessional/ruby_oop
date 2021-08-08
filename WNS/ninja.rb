require_relative 'human'
class Ninja < Human

    def initialize
        puts "NINJA SPAWN"
        super
        @stealth = 175
        # self
    end

    def steal(obj)
        puts "STEALING:"
        @health += 10
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
        end
    end

    def get_away
        puts "GETTING AWAY:"
        @health -= 15
    end
end

puts ninja = Ninja.new
puts ninja.display_stats
# puts ninja.heal
puts ninja.steal(ninja)
puts ninja.display_stats
puts ninja.get_away
puts ninja.display_stats