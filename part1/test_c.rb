require 'minitest/autorun'
require './main.rb'

class TestCalculator < Minitest::Test
    def test_calc
        assert_equal 6.00074045882452, func(6,0)
        assert_equal -6.0, func(-3,0)
    end
end