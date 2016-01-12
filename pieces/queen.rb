require_relative "../piece"

class Queen < Piece

  def initialize(color)
    @tag = '♛'
    super(color)

  end
end
