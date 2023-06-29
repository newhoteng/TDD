require 'rspec'
require_relative 'solver'

RSpec.describe Solver do
  describe '#factorial' do
    context 'when a negative integer is given' do
      subject { described_class.new }

      it 'raises an exception' do
        expect { subject.factorial(-3) }.to raise_error('n must be a non-negative integer')
      end
    end

    context 'when a positive integer is given' do
      subject { described_class.new }

      it 'returns the right value' do
        expect(subject.factorial(5)).to eql 120
        expect(subject.factorial(12)).to eql 479_001_600
        expect(subject.factorial(1)).to eql 1
      end
    end

    context 'when 0 is given' do
      subject { described_class.new }

      it 'returns the right value' do
        expect(subject.factorial(0)).to eql 1
      end
    end
  end

  describe '#reverse' do
    subject { described_class.new }

    it 'returns the right string' do
      expect(subject.reverse('hello')).to eql 'olleh'
      expect(subject.reverse('Hello, world!')).to eql '!dlrow ,olleH'
    end
  end

  describe '#fizzbuzz' do
    subject { described_class.new }

    it 'returns the right string' do
      expect(subject.fizzbuzz(15)).to eql 'fizzbuzz'
      expect(subject.fizzbuzz(4)).to eql '4'
      expect(subject.fizzbuzz(3)).to eql 'fizz'
      expect(subject.fizzbuzz(5)).to eql 'buzz'
    end
  end
end
