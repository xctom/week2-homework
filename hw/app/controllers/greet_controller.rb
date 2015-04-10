class GreetController < ApplicationController

	def say_hello
		
		@word = params["salutation"]

		#check if there exist a param salutation
		if !@word
			@word = "Hello"
		end

	end

end