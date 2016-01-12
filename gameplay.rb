require_relative "cursor_input"
require_relative "display"
require_relative "board"

class GamePlay

  attr_reader :turn

  extend CursorInput

  def initialize
    @board = Board.new
    @board.pop_board
    @display = Display.new
    @won = false
    @selected_piece = nil
    @turn = :white
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
      handle_enter(position)
    when :left, :right, :up, :down
      @display.move_cursor(command)
      nil
    else
      puts command
    end
  end

  def swap_player
    @turn = (@turn == :black) ? :white : :black
  end

  def handle_enter(position)
    inspect_piece(position)
    if @selected_piece.nil?
      select_piece(position)
    elsif @selected_piece == @board[position]
      deselect_piece
    else
      attempt_to_move(position)
      swap_player
    end
  end

  def valid_selection?(position)
    @turn == @board[position].color
  end

  def select_piece(position)
    if valid_selection?(position)
      @selected_piece = @board[position]
      @display.piece_path << position
    end
  end

  def deselect_piece
    @selected_piece = nil
    @display.clear_piece_path
  end

  def attempt_to_move(position)
    previous_position = @selected_piece.position
    @selected_piece.move(position)
    @board[previous_position]= NullPiece.new
    #selected_piece - check valid moves for selected_piece
    #make_move if valid
    @board[position] = @selected_piece
    @selected_piece = nil
    @display.clear_piece_path
  end

end
