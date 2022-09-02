require './tictactoe.rb'

describe Board do

  subject(:board) { described_class.new }

  describe '#display_board' do
    it 'puts out three subarrays containing nil three times' do
      expect(board).to receive(:puts).exactly(3).times
      board.display_board
    end
  end

  describe '#win' do
    context 'if setup without any stubs' do
      it 'returns nil' do
        expect(board.win).to eq(nil)
      end
    end
  end
end
