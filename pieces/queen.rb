require_relative "../piece"

class Queen < Piece

  def self.tag
    '♛'
  end

  def self.max_steps
    [7, 7]
  end

  def self.directions
    [:x, :+]
  end

end
