class MyFile
  # makes handle accesible for other methods
  attr_reader :handle

  def initialize(filename)
    @handle = File.new(filename, "r")
  end

  # Close the file when finished
  def finished
    @handle.close
  end
end

read do
  f = MyFile.new("pass.txt")
  f do
    puts f.handle.gets
  end
end


f = MyFile.new("pass.txt")
f.handle.each {|line| puts line}
f.finished
