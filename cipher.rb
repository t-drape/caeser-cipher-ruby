# frozen_string_literal: true

class Cipher
  def initialize
    @quote = nil
    @num = nil
  end

  def set_string
    puts 'Message: '
    @quote = gets.chomp
  end
end

# def cipher(string, num)
#   ascii = string.bytes
#   arr = []
#   ascii.each do |code|
#     if code > 64 && code < 91
#       if (code + num) > 90
#         code = 64 + ((code + num) - 90)
#       else
#         code += num
#       end
#     elsif code > 96 && code < 123
#       if (code + num) > 122
#         code = 96 + ((code + num) - 122)
#       else
#         code += num
#       end
#     end
#     arr << code
#   end
#   x = arr.map(&:chr)
#   x.join
# end

# puts 'Message: '
# string = gets.chomp
# puts 'Number: '
# num = gets.chomp
# num = num.to_i

# puts cipher(string, num)
