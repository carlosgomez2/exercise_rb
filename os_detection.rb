# OS detection
if RUBY_PLATFORM =~ /win32/
  puts "We're in Windows"
elsif RUBY_PLATFORM =~ /linux/
  puts "We're in Linux"
elsif RUBY_PLATFORM =~ /darwin/
  puts "We're in MacOS"
elsif RUBY_PLATFORM =~ /freebsd/
  puts "We're in FreeBSD"
else
  puts "We're running under an unknow OS"
end

print "\n\n"

# ENV detection
ENV.each { |e| puts e.join(': ') }
