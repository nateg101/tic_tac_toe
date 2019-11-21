require 'player'

describe Player do
  subject(:player1) { described_class.new('X') }

  context '#initialize' do
    it 'initializes with an input' do
      expect(player1.player_mark).to eq 'X'
    end
  end
end
