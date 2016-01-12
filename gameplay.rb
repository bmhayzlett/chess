require_relative "cursor_input"
require_relative "display"
require_relative "board"

class GamePlay

  extend CursorInput

  def initialize(board = Board.new)
    @board = board
    @display = Display.new
    @won = false
  end

  def run
    until @won
      @display.render_board(@board)
      input = self.class.get_input
      handle_command(input)
    end
  end

  def inspect_piece(position)
    puts "#{@board[position]} #{@board[position].color}"
  end

  def handle_command(command)

    case command
    when :exit
      @won = true
    when :enter
      position = @display.cursor
      inspect_piece(position)
    when :left, :right, :up, :down
      @display.move_cursor(command)
      nil
    else
      puts command
    end
end


end
