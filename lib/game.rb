require 'grid'

class Game
  attr_reader :grid

  def initialize
    @grid = Grid.new
  end

  def move(cell, mark)
    raise "That square's already taken playa" if square_free?(cell)

    grid.layout.store(cell.to_sym, mark)
  end

  def game_over?
    grid.grid_complete?
  end

  private

  def square_free?(cell)
    grid.show_square(cell) != nil
  end

end
