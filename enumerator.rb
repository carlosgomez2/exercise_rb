array = (1..10).to_a
print array

# methods provided

collect = array.collect { |i| i.to_s + "X" }
puts collect

detect = array.detect { |i| i.between?(2,3) }
puts detect

select_a = array.select { |i| i.between?(2,3) }
puts select_a

sort = array.sort
puts sort

max = array.max 
puts max 

min = array.min
puts min