require 'grid'

describe Grid do

  subject(:grid) { described_class.new }

  context '#initialize' do
    it 'initializes with a three by three grid' do
      expect(grid.layout).to eq({ a1: nil, a2: nil, a3: nil, b1: nil, b2: nil, b3: nil, c1: nil, c2: nil, c3: nil })
    end
  end

  context '#grid_complete?' do
    it 'returns false when at least one square in layout is empty' do
      expect(grid.grid_complete?).to eq false
    end
  end
end
