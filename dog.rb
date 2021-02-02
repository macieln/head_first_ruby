class Animal
attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "Name cannot be blank!"
        else
            @name = value
        end
    end

    def age=(value)
        if value < 0
            raise "An age value pf #{value} is not valid!"
        else
            @age = value
    end
end

def report_age
    puts "#{@name} is #{@age} years old."
end

def talk
    puts "#{@name} says Bark!"
end

def move(destination)
    puts "#{@name} runs to the #{destination}."
end
end    

class Dog < Animal    
    def to_s
        puts "#{@name} is #{@age} years old."
    end 
end

class Bird < Animal    
    def talk
        puts "#{@name} says Chirp! Chirp!" 
    end 
end

class Cat < Animal   
    def talk
        puts "#{@name} says Meow!" 
    end 
end

class Armadillo < Animal   
    def move(destination)
        puts "#{@name} unrolls!"
        super(destination)
    end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
fido.report_age

# puts fido

# rex = Dog.new
# rex.name = "Rex"
# rex.age = 3
# rex.report_age

# bad_dog = Dog.new
# bad_dog.name = ""
# bad_dog.age = 2
# bad_dog.report_age

# whiskers = Cat.new
# whiskers.name = "whiskers"
# whiskers.talk

# polly = Bird.new
# polly.name = "polly"
# polly.talk

# sebastian = Armadillo.new
# sebastian.name = "sebastian"
# sebastian.talk