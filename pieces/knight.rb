require_relative "../piece"

class Knight < Piece

  def self.tag
    '♞'
  end

  def self.max_step
    1
  end

end
