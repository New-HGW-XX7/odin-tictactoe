require './tictactoe.rb'

describe Board do

  subject(:board) { described_class.new }

  describe '#display_board' do
    it 'puts out three subarrays containing nil three times' do
      expect(board).to receive(:puts).exactly(3).times
      board.display_board
    end
  end
end
