require_relative "../piece"

class King < Piece

  def initialize(color)
    super(color)
    @tag = (color == "black") ? '♚' : '♔'
  end
end
