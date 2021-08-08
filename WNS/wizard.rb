require_relative 'human'
class Wizard < Human
    
    def initialize
        puts "WIZARD SPAWN"
        super
        @intelligence = 25
        @health = 50
        # self
    end

    def heal
        puts "HEALING:"
        @health += 10
    end

    def fireball(obj)
        puts "FIREBALL"
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            true
        else
            false
        end
    end
end

puts wiz = Wizard.new
puts wiz.display_stats
puts wiz.heal
puts wiz.fireball(wiz)
puts wiz.display_stats