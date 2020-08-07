# Name Input

puts %(Hello, welcome to Tic Tac Toe)
puts %()
puts 'Please insert your name Player One: '
name_pone = gets.chomp
puts %()
puts 'Please insert your name Player Two: '
name_ptwo = gets.chomp
puts %()

p name_pone # player one

p name_ptwo # player two

# Get the User square selection
puts %()
puts "Please choose a square #{name_pone}"
turn_pone = gets.chomp

# Checks if the user input is in range.
if turn_pone.to_i > 9 || turn_pone.to_i < 1
  puts "That square is not in the table" 
else
  for i in two_darr
    while j
      turn_pone == j ? j = "X" : puts 'That square is already ocuppied, pick another one' 
    end
    end
end 

# def game_on 
#   two_darr.each {|i,j| }
# end


# Two Dimensional Function

p two_darr = [%w[1 2 3], %w[4 5 6], %w[7 8 9]]





#Winning cases

# Vertical
 ver_left = two_darr[0][0] == two_darr[1][0] && two_darr[2][0]
 ver_cent = two_darr[0][1] == two_darr[1][1] && two_darr[2][1]
 ver_right = two_darr[0][2] == two_darr[1][2] && two_darr[2][2]

# Horizontal

 hor_top = two_darr[0][0] == two_darr[0][1] && two_darr[0][2]
 hor_cent = two_darr[1][0] == two_darr[1][1] && two_darr[1][2]
 hor_bot = two_darr[2][0] == two_darr[2][1] && two_darr[2][2]

# Diagonal
 diag_one = two_darr[0][0] == two_darr[1][1] && two_darr[2][2]
 diag_two = two_darr[0][2] == two_darr[1][1] && two_darr[2][0]



