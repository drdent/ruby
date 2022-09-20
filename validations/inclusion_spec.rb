require './inclusion'

describe Inclusion do
  subject(:inclusion) {
    Inclusion.new(
      state:                     state,
      state_without_presence:    state_without_presence,
      state_without_allow_blank: state_without_allow_blank
    )
  }
  let(:state) { described_class::STATES.first }
  let(:state_without_presence) { described_class::STATES.first }
  let(:state_without_allow_blank) { described_class::STATES.first }

  describe 'validations' do
    describe '#state' do
      it 'is valid' do
        expect(inclusion).to be_valid
      end

      context 'with nil' do
        let(:state) { nil }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 1
        end
      end

      context 'with empty string' do
        let(:state) { '' }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 1
        end
      end

      context 'with another value' do
        let(:state) { 'any other value' }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 1
        end
      end
    end

    describe '#state_without_presence' do
      it 'is valid' do
        expect(inclusion).to be_valid
      end

      context 'with nil' do
        let(:state_without_presence) { nil }

        it 'is valid' do
          expect(inclusion).to be_valid
        end
      end

      context 'with empty string' do
        let(:state_without_presence) { '' }

        it 'is valid' do
          expect(inclusion).to be_valid
        end
      end

      context 'with another value' do
        let(:state_without_presence) { 'any other value' }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 1
        end
      end
    end

    describe '#state_without_allow_blank' do
      it 'is valid' do
        expect(inclusion).to be_valid
      end

      context 'with nil' do
        let(:state_without_allow_blank) { nil }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 2
        end
      end

      context 'with empty string' do
        let(:state_without_allow_blank) { '' }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 2
        end
      end

      context 'with another value' do
        let(:state_without_allow_blank) { 'any other value' }

        it 'is invalid' do
          expect(inclusion).not_to be_valid
          expect(inclusion.errors.size).to eq 1
        end
      end
    end
  end
end