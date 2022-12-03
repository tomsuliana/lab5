# frozen_string_literal: true

require './main'

puts 'Input x and z'
reg = /\d/
xx = gets
zz = gets
if xx.match(reg) && zz.match(reg)
  xx = xx.to_f
  zz = zz.to_f
  a = Calc.func(xx, zz)
  puts "result = #{a}"
else
  puts 'Enter numbers only'
end
return
