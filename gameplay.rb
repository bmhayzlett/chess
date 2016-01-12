require_relative "cursor_input"
require_relative "display"
require_relative "board"

class GamePlay

  extend CursorInput

  def initialize(board = Board.new)
    @board = board
    @display = Display.new

  end

  def game_input
    until won?
      @display.render_board(@board)
      input = self.class.get_input
      handle_command(input)
    end
  end

  def handle_command(command)
    case command
    when :exit
      exit 0
    when :enter
      # @cursor_pos
    when :left, :right, :up, :down
      @display.move_cursor(command)
      nil
    else
      puts command
    end
end

  def won?
    false
  end

end
