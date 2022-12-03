# frozen_string_literal: true

# Class for zipping words
class Zipper
  def self.obrez(strmas, nummas)
    strmas.split.zip(nummas.split).map { |arr| arr[0].chars.take(arr[1].to_i).join('') }
  end
end
