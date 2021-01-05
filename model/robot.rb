class Robot
	attr_accessor :robot_name, :x_posit, :y_posit, :facing
  attr_reader :board

	def initialize(robot_name, x_position, y_position, facing, board)
		@robot_name = robot_name
		@x_posit = x_position
		@y_posit = y_position
		@facing = facing
		@board = board

		@board << self
	end

	def hit_border?
		x_position == 0 || x_position == 6 || y_position == 0 || y_position == 6
	end
end