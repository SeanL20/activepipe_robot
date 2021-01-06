require "minitest/autorun"
require_relative "../model/board"

class BoardTest < Minitest::Test

  def setup
  	@board = Board.new

    @robot = Robot.new(
			robot_name: "TEST", 
			x_position: 0, 
			y_position: 0, 
			facing: "NORTH", 
			board: @board
		)
  end

  # Check if board is an instance of the board class
  def test_board_instance
  	assert_instance_of Board, @board
  end

  # Check if the find_robot would return an instance of robot class
  def test_robot_name
  	assert_instance_of Robot, @board.find_robot("TEST")
  end

end