# This example demostrates that constants have scope within the context of classes
Pi = 3.141592 # => if I hadn't redefined Pi, this original PI would be available to OtherPlanet class.

class OtherPlanet
	Pi = 4.5 # => Own OtherPlanet definition of Pi

	def OtherPlanet.circumference_of_circle(radius)
		radius * 2 * Pi
	end
end

puts OtherPlanet.circumference_of_circle(10)

# Directly refers to OtherPlanet::Pi constant
puts OtherPlanet::Pi

puts Pi