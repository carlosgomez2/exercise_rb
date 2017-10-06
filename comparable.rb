class Song
	include Comparable
	attr_accessor :length

	def <=>(other)
		@length <=> other.length
	end

	def initialize(song_name, length)
		@song_name = song_name
		@length = length
	end
end

a = Song.new('Starway to heaven', 765)
b = Song.new('The Unforgiven', 638)
c = Song.new('Schism', 945)

# Comparable Module
puts "Is A minor to B: #{a < b}"
puts "Is B higher or equal to C: #{b >= c}"
puts "Is C higher than A: #{c > a}"
puts "Is A between B and C: #{a.between?(b,c)}"
