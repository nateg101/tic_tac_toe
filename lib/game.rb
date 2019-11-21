require 'grid'

class Game
  attr_reader :grid

  def initialize
    @grid = Grid.new
  end

  def move(cell, mark)
    raise "That square's already taken playa" if (grid.show_square(cell) != nil)
    grid.layout.store(cell.to_sym, mark)
  end

  # private
  #
  # def square_free?(cell)
  #
  # end

end
