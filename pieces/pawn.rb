require_relative "../piece"

class Pawn < Piece
  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♟' : '♙'
  end
end
