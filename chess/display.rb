require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
# require "colorized_string"

class Display

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    @board.rows.each_with_index.map do |row, i|
      arr = []
      row.each_with_index.map do |square, j|
        if j.even? 
          arr << square.to_s.colorize(:color => :black, :background => :light_blue)
        else
          arr << square.to_s.colorize(:color => :black, :background => :green)
        end
      end
      print arr.join
      print "\n"
    end
  end
end