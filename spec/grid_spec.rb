require 'grid'

describe Grid do

  subject(:grid) { described_class.new }

  context '#initialize' do
    it 'initializes with a three by three grid' do
      expect(grid.layout).to eq({ a1: '', a2: '', a3: '', b1: '', b2: '', b3: '', c1: '', c2: '', c3: '' })
    end
  end

  context '#grid_complete?' do
    it 'returns false when at least one square in layout is empty' do
      expect(grid.grid_complete?).to eq false
    end
  end
end
