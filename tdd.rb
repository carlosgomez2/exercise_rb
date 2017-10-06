# Overwrite string class method titleize
class String
	def titleize
		self.gsub(/(\A|\s)\w/) { |letter| letter.upcase }
		# \A means "anchor for the start from string"
		# \s means "Whitespace (spaces, tabs, newlines, and so on)"
		# \w means "Any letter, digit or underscore"
	end
end

# Manual test
# raise "Fail 1" unless "this is a test".titleize == "This Is A Test"
# raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234"
# raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize"

# Test with test unit module from Ruby
require 'test/unit'

class TestTitleize < Test::Unit::TestCase
  def test_basic
		# Let's make it fail first
		# assert_equal("Let's make it fail first", "foo".titleize)

		# Let's make it pass
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("Another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing Titleize", "We're testing titleize".titleize)
  end
end

# String to test
puts "0123 once more Unto the bridge, dear friends, once more; or close the wall with our Virtual dead! - william shakespeare (Henry v, act III) ".titleize # => This is a test
