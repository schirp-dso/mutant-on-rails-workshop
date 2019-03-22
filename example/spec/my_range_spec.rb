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
  end
end
