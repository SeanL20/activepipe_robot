class Robot
	attr_accessor :robot_name, :x_posit, :y_posit, :facing
  attr_reader :board

  # Initialize a robot class & link to the board class so that the robot can be display as an array.
	def initialize(robot_name:, x_position:, y_position:, facing:, board:)
		@robot_name = robot_name
		@x_posit = x_position
		@y_posit = y_position
		@facing = facing
		@board = board

		@board.robots << self
	end

	# Get the boolean if the robot in the position that it would hit the border if it moves in the x axis.
	def x_hit_border?
		x_posit == 0 || x_posit == 6
	end

	# Get the boolean if the robot in the position that it would hit the border if it moves in the y axis.
	def y_hit_border?
		y_posit == 0 || y_posit == 6
	end
end