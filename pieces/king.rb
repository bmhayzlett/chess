require_relative "../piece"

class King < Piece

  def initialize(color)
    @tag = '♚'
    super(color)

  end
end
