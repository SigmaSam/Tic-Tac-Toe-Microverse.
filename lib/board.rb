class Board
  attr_reader :board
  def initialize(board)
    @board = board
    @winner = false
    @win_arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
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
    board.count('X') + board.count('O') == 9
  end

  def winner?(itr)
    sign = if itr.even?
             'X'
           else
             'O'
           end
    win_arr.each do |arr|
      @winner = arr.all? { |index| board[index] == sign } ? true : false
      return true if @winner
    end
    false
  end
end
