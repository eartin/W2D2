    @rows[1].each do |j|
      Pawn.new(:white, self, [1,j])
    end
    @rows[6].each do |j|
      Pawn.new(:black, self, [6,j])
    end
  
  @rows[0][0] = Rook.new(:white, self, [0,0])
    @rows[0][7] = Rook.new(:white, self, [0,7])
    @rows[7][0] = Rook.new(:black, self, [7,0])
    @rows[7][7] = Rook.new(:black, self, [7,7])

    @rows[0][1] = Knight.new(:white, self, [0,1])
    @rows[0][6] = Knight.new(:white, self, [0,6])
    @rows[7][1] = Knight.new(:black, self, [7,1])
    @rows[7][6] = Knight.new(:black, self, [7,6])

    @rows[0][2] = Bishop.new(:white, self, [0,2])
    @rows[0][5] = Bishop.new(:white, self, [0,5])
    @rows[7][2] = Bishop.new(:black, self, [7,2])
    @rows[7][5] = Bishop.new(:black, self, [7,5])

    @rows[0][3] = Queen.new(:white, self, [0,3])
    @rows[7][3] = Queen.new(:black, self, [7,3])

    @rows[0][4] = King.new(:white, self, [0,4])
    @rows[7][4] = King.new(:black, self, [7,4])