RSpec.describe MyRange do
  describe '.overlap?' do
    def apply
      MyRange.overlap?(left, right)
    end

    context 'when there is no overlap' do
      let(:left)  { 1..2 }
      let(:right) { 3..4 }

      it 'returns false' do
        expect(apply).to be(false)
      end
    end

    context 'when right is entirely lower than left' do
      let(:right) { 1..2 }
      let(:left) { 3..4 }

      it 'reutrns false' do
        expect(apply).to be(false)
      end
    end

    context 'when they touch' do
      let(:left) { 1..2 }
      let(:right) { 2..3 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end

    context 'when they touch 2' do
      let(:left) { 1..2 }
      let(:right) { 1..7 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end

    context 'they partially intersect' do
      let(:left) { 1..3 }
      let(:right) { 2..4 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end
  end
end
