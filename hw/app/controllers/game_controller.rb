class GameController < ApplicationController

	def roll
		@numbers = [1,2,3,4,5,6].sample(2)
		@sum = @numbers[0] + @numbers[1]
		@goal = params["point"]

		if @goal
			if @sum == @goal.to_i
				@desc = "YOU WIN!"
				@button_txt = "Start Over"
			elsif @sum == 7
				@desc = "YOU LOSE!"
				@button_txt = "Start Over"
			else
				@desc = "Your goal is #{@goal} but you rolled #{@sum}. You can roll again."
				@button_txt = "Roll again"
			end
		else
			case @sum
			when 7, 11
				@desc = "YOU WIN!"
				@button_txt = "Start Over"
			when 2, 3, 4
				@desc = "YOU LOSE!"
				@button_txt = "Start Over"
			else
				@goal = @sum
				@goal_desc = "Your goal is now #{@sum}.";
				@desc = "Now try to get #{@sum} again before you roll a 7."
				@button_txt = "Roll the dice"
			end
		end

	end

end