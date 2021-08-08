class MathDojo
    attr_accessor :num

    def initialize
        @num = 0
    end

    def add(*args)
        @num += args.flatten.reduce(0, :+)
        self
    end

    def subtract(*args)
        @num -= args.flatten.reduce(0, :+)
        self
    end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).num
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).num
puts challenge1
puts challenge2