require_relative "../piece"

class Pawn < Piece

  def initialize(color)
    @tag = '♟'
    super(color)

  end
end
