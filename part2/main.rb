# frozen_string_literal: true

# Class for slicing massive
class Masslicer
  def self.masfunc(mas)
    mas.slice_when { |first, second| first > second }.sort_by { |arr| arr[0] }.reverse
  end
end
