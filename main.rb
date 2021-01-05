require_relative 'model/input_cmd'

def main
	board = Board.new

	input_commands = InputCmd.new(board)

	input_commands.input_file_import("data/sample_input_1.txt")
end

main