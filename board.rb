class Board

  PIECES = [Rook.new,
            Knight.new,
            Bishop.new,
            Queen.new,
            King.new,
            Bishop.new,
            Knight.new,
            Rook.new]

  PAWNS = Array.new(8) { Pawn.new }


  def initialize
    @grid = Array.new(8) { Array.new(8) {NullPiece.new}}
    pop_board
  end

  def pop_board
    @grid[0] = PIECES.dup
    @grid[1] = PAWNS.dup
    @grid[6] = PAWNS.dup
    @grid[7] = PIECES.dup
  end
end
