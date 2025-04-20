require_relative 'string_calculator'

RSpec.describe StringCalculator do
  subject { described_class.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns number itself when only one number is given' do
        expect(subject.add("5")).to eq(5)
    end
  end
end
