require_relative 'robot'

class Board
	attr_accessor :robots

	def initialize()
		@robots = []
	end
end