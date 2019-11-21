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

      expect { game.move('a1', 'O') }.to raise_error "That square's already taken playa"
    end
  end

  context '#end_game' do
    it 'ends the game when all the squares are filled' do
      game.move('a1', 'X')
      game.move('a2', 'O')
      game.move('a3', 'X')
      game.move('b1', 'O')
      game.move('b2', 'X')
      game.move('b3', 'O')
      game.move('c1', 'X')
      game.move('c2', 'O')
      game.move('c3', 'X')

      puts game.grid.layout

      expect(game.game_over?).to be true
    end
  end
end
