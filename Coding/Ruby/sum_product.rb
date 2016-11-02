# Program to get a number n from the user and then asks if the user wants the sum or product of the numbers 1 to n

puts "Hello user please enter the number n: "
n = gets.to_i

puts "Please enter either sum(s) or product(p): "
check = gets.chomp

while (check != 's' and check != 'p')
    puts "Invalid input: #{check}. Please enter a s or p."
    check = gets.chomp
end

if (check == 'p')
    sum = 1
else 
    sum = 0
end

for i in 1 .. n
    if check == 's'
        sum += i
    elsif check == 'p'
        sum *= i
    else
        puts "Invalid input!"
    end
end

if (check == 's')
    puts "The sum of the numbers 1 to #{n} is #{sum}."
else
    puts "The product of the numbers from 1 to #{n} is #{sum}."
end