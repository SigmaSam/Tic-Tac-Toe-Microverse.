class Interface
  def display_board(board)
    a = "#{board[0]} | #{board[1]} | #{board[2]}\n"
    b = '---------'
    c = "\n#{board[3]} | #{board[4]} | #{board[5]}\n"
    d = '---------'
    e = "\n#{board[6]} | #{board[7]} | #{board[8]} \n"
    a + b + c + d + e
  end
end
