require_relative "../piece"

class Pawn < Piece

  def initialize(color, position = nil)
    @color = color
    @tag = '♟'
    @max_steps = [2, 1]
    @directions = (@color == :black) ? [:bpm] : [:wpm]
    @capture_directions = (@color == :black) ? [:bpc] : [:wpc]
    super(color, position)
  end

  def move(position)
    super(position)
    @max_move_step = 1
  end

end
