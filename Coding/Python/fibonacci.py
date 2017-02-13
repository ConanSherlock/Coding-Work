# Script to output the first n numbers of the fibonacci number sequence
#!/usr/bin/python
def fibonacci(num):
    i = 0
    fibonacci = [0, 1]
    while i < num-1:
        fibonacci.append(fibonacci[i]+fibonacci[i+1])
        i+=1
    return fibonacci

num = 100
list = fibonacci(num)

print list