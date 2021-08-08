# Make challenge1 work. You will need to create two methods: add and subtract. These two functions should take at least 1 argument.
# Make challenge2 work. Modify your methods so that arrays can also be passed as arguments.
class MathDojo
    # attr_accessor :num
    def initialize
        @num = num
    end
    def add(*args)
        num += args
    end

    def subtract(*args)
        num -= args
    end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
