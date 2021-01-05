class Robot
	attr_accessor :robot_name, :x_posit, :y_posit, :facing
  attr_reader :board

	def initialize(robot_name:, x_position:, y_position:, facing:, board:)
		@robot_name = robot_name
		@x_posit = x_position
		@y_posit = y_position
		@facing = facing
		@board = board

		@board.robots << self
	end

	def x_hit_border?
		x_posit == 0 || x_posit == 6
	end

	def y_hit_border?
		y_posit == 0 || y_posit == 6
	end
end