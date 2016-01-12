require_relative "../piece"

class Pawn < Piece

  def move(position)
    super(position)
    @max_move_step = 1
  end


  def self.tag
    '♟'
  end

  def self.max_steps
    [2, 1]
  end

end
