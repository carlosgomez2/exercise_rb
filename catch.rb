catch(:finish) do
	100.times do
		x = rand(100)
		throw :finish if x == 123
		puts "Generated 100 numbers without generating 123"
	end
end
