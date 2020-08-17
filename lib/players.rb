class Players
  attr_writer :player1
  attr_writer :player2
  attr_reader :player1
  attr_reader :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

end
