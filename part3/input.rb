# frozen_string_literal: true

require_relative 'main'
puts 'Enter string'
str = gets
puts 'Enter numbers'
num = gets
reg1 = /\A[\d ]+\Z/
reg2 = /\A[a-zA-z ]+\Z/
if str.match(reg2) && num.match(reg1)
  p Zipper.obrez(str, num)
else
  puts 'Enter words and numbers'
end
