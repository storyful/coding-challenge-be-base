require_relative '../lib/calc'

describe Calc do
  describe '.sum' do
    subject(:sum) { described_class.sum(num1, num2) }

    context 'when providing 2 integers' do
      let(:num1) { -20 }
      let(:num2) { 35 }

      it 'returns 15' do
        expect(sum).to eq 15
      end
    end

    context 'when providing a nil number' do
      let(:num1) { nil }
      let(:num2) { 35 }

      it 'treats nil as zero' do
        expect(sum).to eq 35
      end
    end
  end
end