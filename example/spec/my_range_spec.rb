RSpec.describe MyRange do
  describe '.overlap?' do
    def apply
      MyRange.overlap?(left, right)
    end

    context 'when there is no overlap (case 1)' do
      let(:left)  { 1..2 }
      let(:right) { 3..4 }

      it 'returns false' do
        expect(apply).to be(false)
      end
    end

    context 'when there is no overlap (case 2)' do
      let(:left)  { 3..4 }
      let(:right) { 1..2 }

      it 'returns false' do
        expect(apply).to be(false)
      end
    end

    context 'when ranges overlap (case 1)' do
      let(:left)  { 1..5 }
      let(:right) { 3..7 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end

    context 'when ranges overlap (case 2)' do
      let(:left)  { 3..7 }
      let(:right) { 1..5 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end

    context 'when ranges overlap by touching (case 3)' do
      let(:left)  { 3..5 }
      let(:right) { 5..7 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end

    context 'when ranges overlap by touching (case 4)' do
      let(:left)  { 3..5 }
      let(:right) { 1..3 }

      it 'returns true' do
        expect(apply).to be(true)
      end
    end
  end
end
