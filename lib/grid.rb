class Grid

  attr_accessor :layout

  def initialize
    @layout = { a1: nil,
              a2: nil,
              a3: nil,
              b1: nil,
              b2: nil,
              b3: nil,
              c1: nil,
              c2: nil,
              c3: nil
            }
  end

  def show_square(cell)
    layout.fetch(cell.to_sym)
  end

end
