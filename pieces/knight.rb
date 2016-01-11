require_relative "../piece"

class Knight < Piece
  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♞' : '♘'
  end
end
