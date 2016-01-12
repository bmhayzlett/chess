require_relative "../piece"

class Knight < Piece

  def self.tag
    '♞'
  end

  def self.max_steps
    [1,1]
  end

  def self.directions
    [:k]
  end

end
