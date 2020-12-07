require './app/year_founder'

describe YearFounder do
  describe '.initialize' do
    it 'can be initialized' do
      expect {YearFounder.new }.not_to raise_error
    end
  end

  describe '#to_s' do
    let(:year_founder) { YearFounder.new }

    it 'returns all years with whitespace' do
      expect(year_founder.to_s).to start_with '1735 1700 1358 '
    end
  end

  describe '#solution1' do
    let(:year_founder) { YearFounder.new }

    it 'returns thr solution1' do
      expect(year_founder.solution1).to eq 878724
    end
  end

  describe '#solution2' do
    let(:year_founder) { YearFounder.new }

    it 'returns thr solution2' do
      expect(year_founder.solution2).to eq 878724
    end
  end
end
