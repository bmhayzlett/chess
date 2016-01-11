require "colorize"

class Display

  def render_board(board)
    render_string = ""
    board.grid.each_index do |row|
      board.grid[row].each_with_index do |piece, col|
        if (row + col).even?
          render_string << (piece.to_s + " ").on_black
        else
          render_string << (piece.to_s + " ").on_red
        end
      end
      render_string << "\n"
    end
    puts render_string
  end
end
