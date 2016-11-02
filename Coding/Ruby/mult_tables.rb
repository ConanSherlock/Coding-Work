# Program to get a number n from the user and then output the multiplication tables from 1 to 12 for that number

puts "Hello user please enter the number n: "
n = gets.to_i

for i in 1 .. 12
    puts "#{n}\tx\t#{i}\t=\t#{n*i}"
end