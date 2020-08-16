class Player

  def welcome
    puts "Welcome to Tic Tac Toe"
    puts "what's player one's name ?"
    @name_pone = gets.chomp
    puts "what's player two's name ?"
    @name_ptwo = gets.chomp
    system('cls') || system('clear')
  end
  
end
