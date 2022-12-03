# frozen_string_literal: true

require_relative 'main'
require 'faker'
RSpec.describe Zipper do
  describe 'obrez' do
    context 'when all params passed' do
      it 'should return norm 1' do
        n = Random.rand(1..7)
        origstr = ''
        numorigstr = ''
        n.times do
          num = Random.rand(1..8)
          numorigstr += "#{num} "
          origstr += "#{Faker::Lorem.characters(number: num, min_alpha: num)} "
        end
        p origstr
        p numorigstr
        expect(Zipper.obrez(origstr, numorigstr)).to eq(origstr.split)
      end
      it 'should return norm 2' do
        n = Random.rand(1..7)
        origstr = ''
        numorigstr = ''
        n.times do
          num = Random.rand(1..8)
          numorigstr += "#{num} "
          origstr += "#{Faker::Lorem.characters(number: num + 1, min_alpha: num)} "
        end
        p origstr
        p numorigstr
        maslen = []
        Zipper.obrez(origstr, numorigstr).each { |str| maslen.push(str.length.to_s) }
        p maslen
        expect(maslen).to eq(numorigstr.split)
      end
    end
  end
end
