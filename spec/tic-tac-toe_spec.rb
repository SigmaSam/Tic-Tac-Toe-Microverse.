require_relative '../bin/main'

decribe Interface
  let(:interface){Interface.new}
  let(:test_array){[1...3]}
  it "displays the board" do
    expect(interface.display_board(test_array)).to eql(test_array)
  end
end
