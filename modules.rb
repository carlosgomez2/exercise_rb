module AnotherModule
	def do_stuff
		puts "this is a test"
	end
end

# 'include' takes the module and include the content in to the current scope
include AnotherModule
do_stuff

# module methods can be included into the current scope, even if is not directly within a class, example:
AnotherModule.do_stuff