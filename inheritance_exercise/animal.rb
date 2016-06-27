module Flight
  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end
end

class Animal
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

class Amphibian < Animal
  def warm_blooded?
    false
  end
end

class Primate < Mammal
  attr_reader :num_legs
  @num_legs = 2
end

class Frog < Amphibian
end

class Bat < Mammal
end

class Bird < Mammal
  include Flight
end

class Parrot < Bird
end

class Chimpanzee < Primate
end
