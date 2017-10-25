# Herencia 1
class ParentClass
	def method1
		puts "Hello from method1 in the parent class"
	end

	def method2
		puts "Hello from method2 in the parent class"
	end

end

class ChildClass < ParentClass
	def method2
		puts "Hello from method2 in the child class"
	end
end

my_object = ChildClass.new
my_object.method1
my_object.method2

# Herencia 2
class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

class Child < Parent
end

p = Parent.new
p.say_hello # => superclass is Object


c = Child.new
c.say_hello
c.superclass # => superclass is Parent
