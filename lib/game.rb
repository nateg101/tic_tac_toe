require 'grid'
require 'player'

class Game
  attr_reader :grid, :player1, :player2
  attr_accessor :current_player

  def initialize
    @grid = Grid.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
    @current_player = player1
  end

  def move(cell, mark)
    raise "That square's already taken playa" if square_free?(cell)

    grid.layout.store(cell.to_sym, mark)
    change_turn
  end

  def game_over?
    grid.grid_complete?
  end

  private

  def square_free?(cell)
    grid.show_square(cell) != nil
  end

  def change_turn
    current_player == player1 ? self.current_player = player2 : self.current_player = player1
    return "Player #{current_player.player_mark}'s turn"
  end

end
