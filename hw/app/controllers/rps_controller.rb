class RpsController < ApplicationController

	def submitted
		@user_weapon = params["weapon"]
		@valid = true
		@desc = ""

		#check if the input is valid
		if !@user_weapon || !weapon_list.include?(@user_weapon)
			@valid = false
			@desc = "No weapon is chosen!"
		else
			@computer_weapon = weapon_list.sample

			#give different feedback according to the choice of user and 
			if @user_weapon == @computer_weapon
				
				@desc = "It is a tie!"

			elsif (@user_weapon == "paper" && @computer_weapon == "rock") || (@user_weapon == "rock" && @computer_weapon == "scissors") || (@user_weapon == "scissors" && @computer_weapon == "paper") 
				
				@desc = "You win!"

			else

				@desc = "Computer wins!"				

			end

		end

	end

	def weapon_list
		return ["paper","rock","scissors"]
	end

end