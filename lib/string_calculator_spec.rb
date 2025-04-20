require_relative 'string_calculator'

RSpec.describe StringCalculator do
  subject { described_class.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(subject.add("")).to eq(0)
    end
  end
end
