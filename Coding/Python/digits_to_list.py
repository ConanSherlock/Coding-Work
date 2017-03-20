# Takes a number and returns a list of its digits
#!/usr/bin/python
def digit_to_list(num):
    digit_list = []
    while num > 0:
        digit_list.append(num%10)
        num = (num - num%10)/10
    return digit_list[::-1]

num = 1234567890
list = digit_to_list(num)

print num
print list