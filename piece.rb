require 'colorize'

class Piece
  attr_reader :color, :position

  MOVES = {
    :+ => [ [1,0], [-1,0], [0,1], [0,-1] ],
    :x => [ [1,1], [1,-1], [-1,1], [-1,-1] ],
    :wpm => [ [-1,0] ],
    :bpm => [ [1,0] ],
    :wpc => [ [-1,-1], [-1,1] ],
    :bpc => [ [1,1], [1,-1] ],
    :k => [ [1,2], [1,-2], [2,1], [2,-1], [-1,2], [-1,-2], [-2,1], [-2,-1] ]
  }

  def initialize(color, position = nil)
    @position = position
    @color = color
    @tag = self.class.tag
    if @color == :white
      @tag = @tag.white
    else
      @tag = @tag.black
    end
    @max_move_step, @max_capture_step = self.class.max_steps
  end

  def self.big_moves
    MOVES
  end

  def to_s
    @tag
  end

  def self.capture_directions
    nil
  end

  def move(position)

    @position = position
  end

  def same_color?(position, board)
    board[position].color == @color
  end

  def in_bounds?(position)
    row, col = position
    row.between?(0,7) && col.between?(0,7)
  end

  def available_moves(board)

    #return array of positions of valid moves
  end

  def check_path(direction, board, capture)
    if capture == false
      steps = @max_move_step
    else
      steps = @max_capture_step
    end

    viable_moves = []
    delta_row, delta_col = direction
    current_row, current_col = @position

    steps.times do |i|
      current_position = [current_row + delta_row * (i+1),
                          current_col + delta_col * (i+1)]

      return viable_moves unless in_bounds?(current_position)

      if same_color?(current_position, board)
        return viable_moves
      else
        unless board[current_position].is_a?(NullPiece)
          viable_moves << current_position if capture
          return viable_moves
        else
          viable_moves << current_position unless capture
        end

      end
    end

    viable_moves
  end




  def check_for_move(board, capture)
    if capture
      direction_symbols = self.class.capture_directions || self.class.directions
    else
      direction_symbols = self.class.directions
    end

    directions = []

    direction_symbols.each do |moveset|
      directions.concat(MOVES[moveset])
    end

    viable_moves = []
    directions.each do |direction|
      viable_moves.concat(check_path(direction, board, capture))
    end



    viable_moves

  end




end
