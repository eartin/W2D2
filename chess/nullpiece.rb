require_relative "piece"
require "singleton"
require_relative "cursor"

class NullPiece < Piece
  include Singleton
  
  def inspect
    row, col = :cursor_pos 
    if board.rows[row][col] == self
      return "nil".colorize(:blue)
    else 
      return "nil"
    end
  end

  def to_s
    " X "
  end
end