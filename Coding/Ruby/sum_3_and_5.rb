# Program to get a number n from the user and calculate the sum from 1 to n

puts "Hello user please enter a number to sum to: "
n = gets.to_i
sum = 0

for i in 1 .. n
    if ((i%3 == 0) or (i%5 == 0))
        sum += i
    end
end

puts "The sum of the numbers 1 to #{n} is #{sum}."