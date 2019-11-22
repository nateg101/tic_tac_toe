class Grid

  attr_accessor :layout

  def initialize
    @layout = { a1: '',
              a2: '',
              a3: '',
              b1: '',
              b2: '',
              b3: '',
              c1: '',
              c2: '',
              c3: ''
            }
  end

  def show_square(cell)
    layout.fetch(cell.to_sym)
  end

  def grid_complete?
    layout.value?('') ? false : true
  end

end
