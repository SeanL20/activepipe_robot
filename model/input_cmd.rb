require_relative 'board'

class InputCmd
	attr_accessor :board

	# generate board class with robots as a variable to store all the robots.
	def initialize(board)
		@board = board
	end

	def input_file_import(file_path)
		file = File.open(file_path)

		file_data = file.readlines.map(&:chomp)

		file_data.each do |data|
			robot_name = data.split(": ")[0]
			command = data.split(": ")[1]
			case command
			when /PLACE/
				self.place_robot(robot_name, command)
			when "LEFT"
				puts "TEST02"
			when "RIGHT"
				puts "TEST03"
			when "MOVE"
				puts "TEST04"
			when "REPORT"
				puts "TEST05"
			end
		end
	end

	def place_robot(robot_name, command)
		coord = command.split(" ")[1].split(",")
		x_coord = coord[0]
		y_coord = coord[1]
		facing = coord[2]
		Robot.new(
			robot_name: robot_name, 
			x_position: x_coord, 
			y_position: y_coord, 
			facing: facing, 
			board: board
		)
	end
end