def cipher(string, num)
  ascii = string.bytes
  arr = []
  for code in ascii
    if (code > 64 && code < 91)
      if ((code + num) > 90)
        code = 64 + ((code + num) - 90)
        arr << code
      else
        code += num
        arr << code
      end
    elsif (code > 96 && code < 123)
      if ((code+num) > 122)
        code = 96 + ((code+num) - 122)        
        arr << code
      else
        code += num
        arr << code
      end
    else
      arr << code
    end
  end  
  x = arr.map {|code| code.chr}
  x.join("")
end

puts "Message: "
string = gets.chomp
puts "Number: "
num = gets.chomp
num = num.to_i

puts cipher(string, num)
