class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = [] # => @rooms = Array.new
	end

	# Player = Struct.new(:name, :location)
	# Room = Struct.new(:reference, :name, :description, :connections)

	def start(location)
		@player.location = location
		show_current_description
	end

	def add_room(reference, name, description, connections)
		@rooms << Room.new(reference, name, description, connections)
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect { |room| room.reference == reference }
	end

	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[directions]
	end

	def go(direction)
		puts "you go " + direction.to_s
		@player.location = find_room_in_direction(direction)
		show_current_description
	end

	class Player
		attr_accessor :name, :location

		def initialize(name)
			@name = name
		end
	end

	class Room
		attr_accessor :reference, :name, :description, :connections

		def initialize(reference, name, description, connections)
			@reference = reference
			@name = name
			@description = description
			@connections = connections
		end

		def full_description
			@name + "\n\nYou are in " + @description
		end
	end
end

# Create main object
my_dungeon = Dungeon.new("Carlos")
puts my_dungeon.player.name

# Add rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", { :west => :smallcave })
my_dungeon.add_room(:smallcave, "Small Cave", "a small claustrophobic cave", { :east => :largecave })
my_dungeon.add_room(:mediumcave, "Medium Cave", "a cave with nice space", { :north => :smallcave })

# Start the dungeon by placing the player in the large cave
my_dungeon.start(:mediumcave)
