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

    it 'returns sum of two numbers' do
        expect(subject.add("1,2")).to eq(3)
    end

    it 'returns sum of multiple numbers' do
        expect(subject.add("1,2,3,4")).to eq(10)
    end

    it 'supports newline as a delimiter' do
        expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter' do
        expect(subject.add("//;\n1;2")).to eq(3)
    end

    it 'raises exception on single negative number' do
        expect { subject.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end  
  end
end
