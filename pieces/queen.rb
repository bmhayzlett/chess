require_relative "../piece"

class Queen < Piece
  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♛' : '♕'
  end
end
