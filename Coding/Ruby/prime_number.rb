# Prints the prime numbers between 1 and 1000

puts "The prime numbers between 1 and 1000 are: "
for number in 2 .. 100
    flag = 0
    
    # Loop with a flag to check if the a number is divisible by any number from 2 to half its value
    for i in 2 .. (number/2)
        if(number%i==0)
            flag = 1
            break
        end
    end
    if flag == 0
        puts "\t\t\t\t\t\t#{number}\n"
    end
end