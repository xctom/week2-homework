class ContactController < ApplicationController
	def submitted
		@first_name = params["first_name"]
		@last_name = params["last_name"]
	end
end