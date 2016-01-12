require_relative "../piece"

class Rook < Piece

  def self.tag
    '♜'
  end

  def self.max_steps
    [7, 7]
  end

  def self.directions
    [:+]
  end


end
