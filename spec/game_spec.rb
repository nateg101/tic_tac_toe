require 'game'

describe Game do
  subject(:game) { described_class.new }

  context '#move' do
    it 'a player can place an X a square on the grid' do
      game.move('a1', 'X')

      expect(game.grid.show_square('a1')).to eq 'X'
    end

    it 'throws a message if a square is taken' do
      game.move('a1', 'X')
      expect{ game.move('a1', 'O') }.to raise_error ("That square's already taken playa")
    end
  end
end
