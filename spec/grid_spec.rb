require 'grid'

describe Grid do

  subject(:grid) { described_class.new }

  context '#initliaze' do
    it 'initializes with a three by three grid' do
      expect(grid.setup).to eq [a1: nil, a2: nil, a3: nil, b1: nil, b2: nil, b3: nil, c1: nil, c2: nil, c3: nil]
    end
  end
end
