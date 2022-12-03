# frozen_string_literal: true

require_relative 'main'
RSpec.describe Calc do
  describe 'func' do
    context 'when all params passed' do
      it 'should do -6.0 for -3 and 0' do
        expect(Calc.func(-3, 0)).to eq(-6.0)
      end
      it 'should return 0 for 0 and 8' do
        expect(Calc.func(0, 8)).to eq(0)
      end
      it 'shouuld return 6.00074045882452 for 6 and 0' do
        expect(Calc.func(6, 0)).to eq(6.00074045882452)
      end
    end
  end
end
