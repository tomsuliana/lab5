# frozen_string_literal: true

require_relative 'main'
RSpec.describe Masslicer do
  describe 'masfunc' do
    context 'when massive initialized' do
      it 'should return massive as in the example' do
        expect(Masslicer.masfunc([1, 2, 3, 3, 2, 2, 1, 4, 5, 3, 4, 5,
                                  6])).to eq([[3, 4, 5, 6], [2, 2], [1, 4, 5], [1, 2, 3, 3]])
      end
      it 'should return something normal' do
        expect(Masslicer.masfunc([5, 5, 8, 0, 2, 1])).to eq([[5, 5, 8], [1], [0, 2]])
      end
      it 'should return smth normal too' do
        expect(Masslicer.masfunc([7, 9, 3, 4, 2, 1])).to eq([[7, 9], [3, 4], [2], [1]])
      end
    end
  end
end
