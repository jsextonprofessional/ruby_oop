# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end
# end
# user1 = User.new("jake","sexton")
# puts user1.inspect

class User
    # creating instance methods that get and set the first_name and last_name attributes
    attr_accessor :first_name, :last_name

    def initialize(f_name, l_name)
        @first_name = f_name
        @last_name = l_name
    end
    
    def full_name
        puts "I am #{@first_name} #{@last_name}"
    end
    
    def say_hello
        puts "YEET! YOINK!"
    end

    def self.foo
        puts "This is a class method"
    end
end
u = User.new("Yeet", "Yoink")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"
u = User.new("Jane", "Doe")
u.foo # => NoMethodError: undefined method `foo'
User.foo
