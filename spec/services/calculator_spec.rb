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
  end
end
