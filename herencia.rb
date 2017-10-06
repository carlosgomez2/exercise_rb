# class ParentClass
# 	def method1
# 		puts "Hello from method1 in the parent class"
# 	end

# 	def method2
# 		puts "Hello from method2 in the parent class"
# 	end

# 	class ChildClass < ParentClass
# 		def method2
# 			puts "Hello from method2 in the child class"
# 		end
# 	end
# end

# my_object = ChildClass.new
# my_object.method1
# my_object.method2

class Person
	def initialize(name)
		@name = name
	end
	def name
		puts @name
	end

	class Doctor < Person
		def name
			puts "Dr" + super
		end
	end
end



a = Person.new("Carlos")
a::Doctor.new


