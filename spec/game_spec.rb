require 'game'

describe Game do
  subject(:game) { described_class.new }


  context '#move' do
    it 'a player can place an X a square on the grid' do
      game.move('a1', 'X')
      expect(game.grid.show_square('a1')).to eq 'X'
    end
  end
end
