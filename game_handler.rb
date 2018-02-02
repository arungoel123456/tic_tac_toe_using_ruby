class Tic_tac_toe
	attr_accessor :current_board , :chances_left

	def initialize
		self.new_game
	end

	def new_game
		current_board=Array.new(3,Array.new(3))
		self.chances_left=9

	end

	def check_input(value1, value2)
		if(value1.to_i>2 || value2.to_i>2)
			puts("give valid input")
			return 2	
		end

		if(current_board[value1.to_i][value2.to_i]=="*" || current_board[value1.to_i][value2.to_i]=="0")
			puts("place already occupied")
			puts("give a valid input")
			return 2	
		end

	end





	def check_update

		
		# all the winning possibilities

		if(current_board[0][0]=="*" && current_board[0][1]=="*" && current_board[0][2]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[1][0]=="*" && current_board[1][1]=="*" && current_board[1][2]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[2][0]=="*" && current_board[2][1]=="*" && current_board[2][2]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[0][0]=="*" && current_board[1][0]=="*" && current_board[2][0]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[0][1]=="*" && current_board[1][1]=="*" && current_board[2][1]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[0][2]=="*" && current_board[1][2]=="*" && current_board[2][2]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[0][0]=="*" && current_board[1][1]=="*" && current_board[2][2]=="*")
			puts("player 1 won the game")
			return 1;
		end

		if(current_board[2][0]=="*" && current_board[1][1]=="*" && current_board[2][0]=="*")
			puts("player 1 won the game")
			return 1;
		end



2


		if(current_board[0][0]=="0" && current_board[0][1]=="0" && current_board[0][2]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[1][0]=="0" && current_board[1][1]=="0" && current_board[1][2]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[2][0]=="0" && current_board[2][1]=="0" && current_board[2][2]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[0][0]=="0" && current_board[1][0]=="0" && current_board[2][0]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[0][1]=="0" && current_board[1][1]=="0" && current_board[2][1]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[0][2]=="0" && current_board[1][2]=="0" && current_board[2][2]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[0][0]=="0" && current_board[1][1]=="0" && current_board[2][2]=="0")
			puts("player 2 won the game")
			return 1;
		end

		if(current_board[2][0]=="0" && current_board[1][1]=="0" && current_board[2][0]=="0")
			puts("player 2 won the game")
			return 1;
		end




	end


	def update_board(value1 , value2)
		a1=self.check_input(value1,value2)
		if(a1==2)
			#puts("game over")
			return
		end
		if(self.chances_left>9)
			puts("game draw")
			return 1
		end

		if(self.chances_left%2==0)
			current_board[value1][value2]="0"
		else
			current_board[value1][value2]="*"
		end

		puts(self.current_board)

		self.chances_left-=1


		a2=self.check_update
		if(a2==1)
			puts("game over")
			return 1
		end



	end

end
