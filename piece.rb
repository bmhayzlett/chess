require 'colorize'

class Piece
  attr_accessor :color

  def initialize(color)
    @color = color
    if @color == :white
      @tag = @tag.white
    else
      @tag = @tag.black
    end
  end

  def to_s
    @tag
  end




end
