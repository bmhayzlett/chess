require_relative "../piece"

class King < Piece

  def self.tag
    '♚'
  end

  def self.max_steps
    [1, 1]
  end

  def self.directions
    [:x, :+]
  end


end
