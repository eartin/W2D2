require_relative "piece"
require_relative "nullpiece"
class Board
  attr_reader :rows
  def initialize
    @rows = Array.new(8) { Array.new(8) }
    @rows[0].map! {|e| e = Piece.new}
    @rows[1].map! {|e| e = Piece.new}
    @rows[6].map! {|e| e = Piece.new}
    @rows[7].map! {|e| e = Piece.new}

    @rows[2].map! {|e| e = NullPiece.instance }
    @rows[3].map! {|e| e = NullPiece.instance }
    @rows[4].map! {|e| e = NullPiece.instance }
    @rows[5].map! {|e| e = NullPiece.instance }

  end

  class NoPieceError < StandardError; end
  class InvalidEndPosError < StandardError; end

  def move_piece(start_pos, end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos
    
    case @rows[start_row][start_col]
      when NullPiece
        raise NoPieceError, "There is no piece!" 
      when Piece
        raise InvalidEndPosError, "You can't move there!" if invalid_move
    end

  end

  def invalid_move
  end

  def valid_pos?(pos)
    pos[0].between?(0,7) and pos[1].between?(0,7)
  end
end