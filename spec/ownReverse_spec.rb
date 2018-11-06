require 'ownReverse'

describe OwnReverse do

  it { is_expected.to respond_to(:reverseCalc).with(1).argument }

  describe '#reverseCalc' do
    it 'returns array in reverse order' do
      test = OwnReverse.new
      expect(test.reverseCalc([1,2,3,4,5])).to eq([5,4,3,2,1])
    end
  end

end
