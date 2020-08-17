class Board
  attr_reader :board
  def initialize(board)
    @board = board
  end

  def swap_on_board(itr, given_number)
    while board.any?(given_number)
      if itr.even?
        board[given_number.to_i - 1] = 'X'
      elsif itr.odd?
        board[given_number.to_i - 1] = 'O'
      end
    end
    board
  end

  def draw?
   (board.count('X') + board.count('O')) == 9 ? true : false
  end

  # New Pseudo-Function.

  def winner?(itr)
    arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    win = %w[ X X X ]
    win = %w[ O O O ]

    if itr.even?
      win = %w[ X X X ]
    else
      win = %w[ O O O ]
    end

    if arr.each do |i|


    
    
    end
  end
end
