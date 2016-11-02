puts "The prime numbers from 1 to 1000 are: "
for number in 2 .. 100
    flag = 0
    
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