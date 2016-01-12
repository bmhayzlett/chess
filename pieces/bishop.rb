require_relative "../piece"

class Bishop < Piece

  def initialize(color)
    @tag = '♝'
    super(color)

  end
end
