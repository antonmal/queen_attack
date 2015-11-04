class Queens
  attr_reader :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    fail ArgumentError, 'Both queens cannot occupy the same square' \
      if white == black
    @white = white
    @black = black
  end

  def to_s
    board = Array.new(8) { Array.new(8, '_') }
    board[white[0]][white[1]] = 'W'
    board[black[0]][black[1]] = 'B'
    board.map { |line| line.join(' ') }.join("\n")
  end

  def attack?
    white[0] == black[0] ||
    white[1] == black[1] ||
    (white[0] - black[0]).abs == (white[1] - black[1]).abs
  end
end
