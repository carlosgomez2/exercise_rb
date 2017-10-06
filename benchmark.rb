require 'benchmark'

# Prints one dot 10000 times and measure time to do this task
# puts Benchmark.measure { 10000.times { print "." } }

iterations = 1000000
#
# b = Benchmark.measure do
#   for i in 1..iterations do
#     x = i
#   end
# end
#
# c = Benchmark.measure do
#   iterations.times do |i|
#     x = i
#   end
# end
#
# puts b
# puts c

# Print the results in a prettier way
Benchmark.bm do |bm|
  bm.report("for:") do
    for i in 1..iterations do
      x = i
    end
  end

  bm.report("times:") do
    iterations.times do |i|
      x = i
    end
  end
end

# Reherseal way (most accurate)
Benchmark.bmbm do |bm|
  bm.report("for:") do
    for i in 1..iterations do
      x = i
    end
  end

  bm.report("times:") do
    iterations.times do |i|
      x = i
    end
  end
end
