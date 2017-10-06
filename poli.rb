# Polimorfism
class Animal
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Cat < Animal
	def talk
		"Meao!"
	end
end

class Dog < Animal
	def talk
		"Woof!"
	end
end

animals = [Cat.new("napoleon"), Dog.new("thor"), Cat.new("loko")]
animals.each { |animal| puts animal.talk }
