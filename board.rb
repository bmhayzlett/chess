require_relative "pieces_manifest"

class Board
  attr_reader :grid

  PIECES = [Rook,
            Knight,
            Bishop,
            King,
            Queen,
            Bishop,
            Knight,
            Rook]



  def initialize
    @grid = Array.new(8) { Array.new(8) {NullPiece.new}}
  end

  def pop_board
    @grid[0].each_index do |i|
      grid[0][i] = PIECES[i].new(:black)
    end

    @grid[7].each_index do |i|
      grid[7][i] = PIECES[i].new(:white)
    end

    @grid[1].each_index { |i | grid[1][i] = Pawn.new(:black) }
    @grid[6].each_index { |i | grid[6][i] = Pawn.new(:white) }


  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row,col = pos
    @grid[row][col] = value
  end

end
