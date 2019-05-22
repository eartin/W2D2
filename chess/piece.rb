require_relative "cursor"

class Piece
  # attr_reader :color, :board, :pos
  # def initialize(color, board, pos)
  #   @color, @board, @pos = color, board, pos
  # end
  def initialize()
  end
  
  def moves
  end

  def to_s
    " ♟ "
  end

  def inspect
    row, col = :cursor_pos 
    if board.rows[row][col] == self
       "piece".colorize(:blue)
    else 
       "piece".colorize(:blue)
    end
  end
end