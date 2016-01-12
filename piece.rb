require 'colorize'

class Piece
  attr_reader :color, :position

  def initialize(color, position = nil)
    @position = position
    @color = color
    @tag = self.class.tag
    if @color == :white
      @tag = @tag.white
    else
      @tag = @tag.black
    end
    @max_move_step, @max_capture_step = self.class.max_steps
  end

  def to_s
    @tag
  end

  def move(position)
    @position = position
  end

  def available_moves
    #return array of positions of valid moves
  end

  def check_path(offset)
    #
  end


end
