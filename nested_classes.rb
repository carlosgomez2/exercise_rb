class Drawing
	def self.give_me_a_circle
		Circle.new
	end

	class Line
	end

	class Circle
		def what_i_am
			"this is a Circle"
		end
	end
end

a = Drawing.give_me_a_circle
puts a.what_i_am

a = Drawing::Circle.new
puts a.what_i_am

a = Circle.new
puts a.what_i_am