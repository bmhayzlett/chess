require_relative "../piece"

class Bishop < Piece

  def self.tag
    '♝'
  end

  def self.max_steps
    [7, 7]
  end

end
