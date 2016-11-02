# Program that asks the user for a number n and then will sum all the numbers from 1 to that number or give the product

print "Hello user please enter the number: "
n = input()

print "Please enter if you want the sum(s) or product(p):"
check = raw_input()

while ((check != 'p') and (check != 's')):
    print "You entered the invalid input " + check + ". Please re-enter another value: "
    check = raw_input()

sum_nums = 0

if check == 'p':
    sum_nums = 1
        
for i in range (1, n+1):
    if check == 's':
        sum_nums += i
    if check == 'p':
        sum_nums *= i

if check == 's':   
    print "The sum of all the numbers from 1 to " + str(n) + " is " + str(sum_nums) + "."
else:
    print "The product of all the numbers from 1 to " + str(n) + " is " + str(sum_nums) + "."