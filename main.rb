# Driver script for caesar cipher

require_relative 'cipher'
puts 'Message: '
string = gets.chomp
puts 'Number: '
num = gets.chomp
num = num.to_i

puts 'Your code:'
puts cipher(string, num)
