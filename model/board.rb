require_relative 'robot'

class Board
	attr_accessor :matrix_board

	def initialize()
		@matrix_board = Matrix.empty(6, 6)
		@robots = []
	end
end