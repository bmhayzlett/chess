require_relative "../piece"

class Rook < Piece

  def self.tag
    '♜'
  end

  def self.max_step
    [7, 7]
  end

end
