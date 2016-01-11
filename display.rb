require "colorize"

class Display

  def initialize
    @cursor = [0, 0]
  end

  def render_board(board)
    render_string = ""
    board.grid.each_with_index do |row, row_num|
      render_string << render_row(row, row_num)
      render_string << "\n"
    end

    system("clear")
    puts "WELCOME TO CHESS"
    puts render_string
  end

  def render_row(row, row_num)
    render_string = ""
    row.each_with_index do |piece, col_num|
      graphic = piece.to_s + " "

      if (row_num + col_num).even?
        graphic = graphic.on_black
      else
        graphic = graphic.on_red
      end

      if [row_num, col_num] == @cursor
        graphic = graphic.on_blue
      end

      render_string << graphic
    end

    render_string
  end

end
