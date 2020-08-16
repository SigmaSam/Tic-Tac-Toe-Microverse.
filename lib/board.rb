class Board
  def display_board(board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "---------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "---------"
    puts "#{board[6]} | #{board[7]} | #{board[8]} \n"
  end

  def input_request(num)
    if num.even?
      puts "it's #{@name_pone} turn"
      display_board($board)
      board_input = gets.chomp
    else
      puts "it's #{@name_ptwo} turn"
      display_board($board)
      board_input = gets.chomp
    end
  end

  def input_request(num)
    if num.even?
      puts "it's #{@name_pone} turn"
      display_board($board)
      board_input = gets.chomp
    else
      puts "it's #{@name_ptwo} turn"
      display_board($board)
      board_input = gets.chomp
    end
  end

  def swap_on_board(i, given_number)
    while $board.any?(given_number)
      if i.even?
        $board[given_number.to_i - 1] = 'X'
      elsif i.odd?
        $board[given_number.to_i - 1] = 'O'
      end
    end
    $board
  end

  def winner?(board)
    if board[0] == board[1] && board[1] == board[2]
      true
    elsif board[3] == board[4] && board[3] == board[5]
      true
    elsif board[6] == board[7] && board[6] == board[8]
      true
    elsif board[0] == board[3] && board[0] == board[6]
      true
    elsif board[1] == board[4] && board[1] == board[7]
      true
    elsif board[2] == board[5] && board[2] == board[8]
      true
    elsif board[0] == board[4] && board[0] == board[8]
      true
    elsif board[2] == board[4] && board[2] == board[6]
      true
    else
      false
    end
  end
  
end
