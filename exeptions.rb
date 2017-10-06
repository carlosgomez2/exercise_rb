# Create class person
# class Person
# 	# Raise an error if name is not present
# 	def initialize(name)
# 		raise ArgumentError, "No name present" if name.empty?
# 	end
# end

# Custom Exception
class BadDataException < RuntimeError
end

class Person
	# Create a person object without name
	def initialize(name)
		# Raise an error if name is not present
		raise BadDataException, "No name present" if name.empty?
	end
end 

# Name is not present, must be throw an error # => ArgumentError: No name present
fred = Person.new('')