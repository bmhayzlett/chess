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

  def self.directions
    @color == :black ? [:bpm] : [:wpm]
  end

  def self.capture_directions
    @color == :black ? [:bpc] : [:wpc]
    puts @color 
  end


end
