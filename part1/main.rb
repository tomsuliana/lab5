# frozen_string_literal: true

# Class for calculating
class Calc
  def self.func(xxx, zzz)
    xxx * (Math.cos(zzz) + Math.exp(-(xxx + 3)))
  end
end
