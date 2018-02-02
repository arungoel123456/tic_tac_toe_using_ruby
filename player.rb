require_relative "game_handler.rb"


class Player
	attr_accessor :game

	def initialize
		self.start_game
	end

	def start_game
		self.game=Tic_tac_toe.new

	end

	def display_game
		puts(self.game.current_board)
		self.play_game


	end


	def play_game
		puts("enter values")
		value1=gets.chomp
		value2=gets.chomp
		checker=game.update_board(value1,value2)
		if(checker==1)
			return

		else

			self.display_game
		end


	end





end

p = Player.new
p.display_game