require 'grid'

class Game
  attr_reader :grid

  def initialize
    @grid = Grid.new
  end

  def move(cell, mark)

    grid.layout.store(cell.to_sym, mark)
  end

end
