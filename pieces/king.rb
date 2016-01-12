require_relative "../piece"

class King < Piece

  def self.tag
    '♚'
  end

  def self.max_step
    [1, 1]
  end

end
