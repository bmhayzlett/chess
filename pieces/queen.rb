require_relative "../piece"

class Queen < Piece

  def self.tag
    '♛'
  end

  def self.max_step
    [7, 7]
  end

end
