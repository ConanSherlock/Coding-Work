# Program that asks the user for a number n and then will give the user the times tables up to 12 for that number

print "Hello user please enter the number: "
n = input()

for i in range (1, 13):
    print `n` + "\tx\t" + `i` + "\t=\t" + `n*i`