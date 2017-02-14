# Takes a number and returns a list of its digits
#!/usr/bin/ruby
require 'pry'

def digit_to_list(num)
    digit_list = []
    while (num>0)
        digit_list.push(num%10)
        num = (num - num%10)/10
    end
    
    return digit_list.reverse
end

num = 1234567890
list = digit_to_list(num)

puts "#{num}"
puts "#{list}"