require_relative "../piece"

class Rook < Piece
  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♜' : '♖'
  end
end
