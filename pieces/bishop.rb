require_relative "../piece"

class Bishop < Piece
  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♝' : '♗'
  end
end
