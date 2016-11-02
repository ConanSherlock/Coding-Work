# Program that asks the user for a number n and then will sum all the numbers from 1 to that number that have factors of 3 or 5

print "Hello user please enter the number to sum to: "

n = raw_input()
sum_nums = 0

for i in range (0, int(n)+1):
    if (i%3 == 0) or (i%5 == 0):
        sum_nums += i
    
print "The sum of all the numbers from 1 to " + n + " that have factors of 3 or 5  is " + str(sum_nums) + "."