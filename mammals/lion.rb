require_relative 'mammal'
class Lion < Mammal
    
    def initialize
        puts "RAAAWR"
        @health = 170
    end

    def fly
        @health -= 10
    end

    def attack_town
        @health -= 50
    end

    def eat_humans
        @health += 20
    end

end
puts lion = Lion.new
puts lion.display_health
puts lion.fly
puts lion.attack_town
puts lion.eat_humans
puts "------------------"
puts flyion = Lion.new
puts flyion.display_health
puts flyion.attack_town
puts flyion.attack_town
puts flyion.attack_town
puts flyion.eat_humans
puts flyion.eat_humans
puts flyion.fly
puts flyion.fly
puts "This is a lion" 
puts flyion.display_health
puts "------------------"
