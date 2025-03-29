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
      it 'return origina value' do
        result = described_class.new.add("2")
        expect(result).to eq(2)
      end
    end

    context 'when input string contain multiple value' do
      it 'return origina value' do
        result = described_class.new.add("1,5")
        expect(result).to eq(6)
      end
    end
  end
end
