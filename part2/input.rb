# frozen_string_literal: true

require_relative 'main'
puts 'Enter massiv'
massive = []
loop do
  input = gets.chomp
  reg = /\d/
  break if input == 'end'

  massive.push input.to_i if input.match(reg)
end
p massive
p 'result: '
p Masslicer.masfunc(massive)
