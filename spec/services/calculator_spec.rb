# frozen_string_literal: true

require 'rails_helper'


RSpec.describe Calculator do
  describe '#add' do
    context 'when input empty string' do
      it 'return 0 value' do
        result = described_class.new.add("")
        expect(result).to eq(0)
      end
    end

    context 'when input string contain single value' do
      it 'return original value' do
        result = described_class.new.add("2")
        expect(result).to eq(2)
      end
    end

    context 'when input string contain multiple value' do
      it 'return sum of 2 values' do
        result = described_class.new.add("1,5")
        expect(result).to eq(6)
      end

      it 'return sum of multiple values' do
        result = described_class.new.add("1,5,7")
        expect(result).to eq(13)
      end
    end

    context 'when input string contain new line char' do
      it 'return correct sum' do
        result = described_class.new.add("1\n2,3")
        expect(result).to eq(6)
      end
    end

    context 'when input string contain different delimiters' do
      it 'return 6 sum' do
        result = described_class.new.add("//;1\n2;3")
        expect(result).to eq(6)
      end

      it 'return 10 sum' do
        result = described_class.new.add("//;5;2;\n3")
        expect(result).to eq(10)
      end
    end

    context 'when input string contain negative values' do
      it 'return error' do
        result = described_class.new.add("1\n2,-3")
        expect(result).to eq("negative numbers not allowed -3")
      end
    end
  end
end
