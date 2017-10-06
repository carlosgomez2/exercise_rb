class Square
	# Initialize is a special method that is called when a new object based on that class is created #=> Square.new trigger initialize method
	def initialize
		if defined?(@@number_of_squares)
			@@number_of_squares += 1
		else
			@@number_of_squares = 1
		end
	end

	# self represents the current class, is equivalent to Square.count
	def self.count
		@@number_of_squares
	end
end

a = Square.new
puts Square.count #=> 1
b = Square.new
puts Square.count #=> 2
c = Square.new
puts Square.count #=> 3
d = Square.new
puts Square.count #=> 4
