require_relative '../lib/interface.rb'
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'

describe Interface do
  let(:interface) {Interface.new}
  let(:test_array){ %w[1 2 3 4 5 6 7 8 9] }
  it 'displays the board' do
    expect(interface.display_board(test_array).class).to eql(String)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[1 2 3 4 5 6 7 8 9]) }
  it 'Changes the possition given for "X" ' do
    expect(board_obj.swap_on_board(2, 5)).to eql(board_obj.board)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[1 2 3 4 5 6 7 8 9]) }
  it 'Changes the possition given for "O" '  do
    expect(board_obj.swap_on_board(5, 9)).to eql(board_obj.board)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[X O X O X O X 8 9]) }
  it 'Returns True when there is a winner otherwise it returns False' do
    expect(board_obj.winner?(6)).to eql(true)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[X 2 3 4 5 6 6 8 9]) }
  it 'Returns True when there is a winner otherwise it returns False' do
    expect(board_obj.winner?(0)).to eql(false)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[X O X X O X O X O]) }
  it 'Returns true when the array has no integers left on it' do
    expect(board_obj.draw?).to eql(true)
  end
end

describe Board do
  let(:board_obj) { Board.new(%w[X O X X O X O X 9]) }
  it 'Returns true when the array has no integers left on it' do
    expect(board_obj.draw?).to eql(false)
  end
end

describe Players do
  let(:player_name) { Players.new('Adan', 'Sam') }
  context "Returns player's one name when number is even" do
    it 'Returns the name of the player' do
      expect(player_name.get_name(0)).to eql('Adan')
    end
    context "Returns player's two name when number is odd" do
      it 'Returns the name of the player' do
        expect(player_name.get_name(1)).to eql('Sam')
      end
    end
  end
end
