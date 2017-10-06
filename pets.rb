class Pet
  # main class 
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
  figaro = Cat.new
  figaro.name = "figaro"
  figaro.age = 1
  figaro.gender = "male"
  figaro.color = "gray"

  def meow
    puts "Meow!"
  end

  puts "I am a cat called " + figaro.name.to_s + " I am " + figaro.gender.to_s + " color " + figaro.color.to_s 
  puts figaro.meow.to_s    

end

# example how class inherits from other class
class Dog < Pet
  # new object Dog
  lassie = Dog.new
  lassie.name = "lassie"
  lassie.age = 3
  lassie.color = "brown"
  lassie.gender = "male"

  def bark
    puts "woof!"
  end

  puts "Hi my name is " + lassie.name.to_s + " I have " + lassie.age.to_s + " years old, and I am " + lassie.gender.to_s + " color " + lassie.color.to_s
  puts lassie.bark
end

class Snake < Pet
  attr_accessor :length

end




