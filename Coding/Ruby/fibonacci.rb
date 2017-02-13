# Script to output the first n numbers of the fibonacci number sequence
#!/usr/bin/ruby
require 'pry'

def fibonacci(num)
    i=0
    fibonacci = [0, 1]
    while (i < num-1)
        fibonacci.push(fibonacci[i]+fibonacci[i+1])
        i += 1
    end
    
    return fibonacci
end

num = 100
list = fibonacci(num)

puts "#{list}"