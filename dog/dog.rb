require_relative 'mammal'
class Dog < Mammal

    def pet
        @health += 5
    end

    def walk
        @health -= 1
    end

    def run
        @health -= 10
    end

end

puts dog = Dog.new
puts dog.display_health
puts dog.pet
puts dog.walk
puts dog.run
puts dog.display_health

puts doggo = Dog.new
puts doggo.walk
puts doggo.walk
puts doggo.walk
puts doggo.run
puts doggo.run
puts doggo.pet
puts doggo.display_health