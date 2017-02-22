# Adds, subtracts and multiplies numbers in different number bases and creates a digit-list representation of them
#!/usr/bin/python

# way to convert from a base to base 10 int int("F", 16)

# Dictionary of number representations
NUM_REP={10:'A',
         11:'B',
         12:'C',
         13:'D',
         14:'E',
         15:'F',
         16:'G',
         17:'H',
         18:'I',
         19:'J',
         20:'K',
         21:'L',
         22:'M',
         23:'N',
         24:'O',
         25:'P',
         26:'Q',
         27:'R',
         28:'S',
         29:'T',
         30:'U',
         31:'V',
         32:'W',
         33:'X',
         34:'Y',
         35:'Z'}

def digit_list(number,bases):
    digit_list=[]
    for base in bases:
        digit_list.append(''.join(num_convert(number,base)))
        
    return digit_list

def num_convert(number, base):
    if number == 0:
        return [0]
    
    if number < 0:
        sign = -1
    else:
        sign = 1
    
    number *= sign 
    
    digits = []
    while number:
        remainder = number % base
        
        if 36>remainder>9:
            remainder_string=NUM_REP[remainder]
        elif remainder>=36:
            remainder_string='('+str(remainder)+')'
        else:
            remainder_string = str(remainder
                                  )
        digits.append(remainder_string)
        number /= base
        
    if sign < 0:
        digits.append('-')
        
    return digits[::-1]

def add_digit_list(list1,list2,bases):
    new_digit_list = digit_list(int(list1[0])+int(list2[0]),bases)   
    return new_digit_list

def sub_digit_list(list1,list2,bases):
    new_digit_list = digit_list(int(list1[0])-int(list2[0]),bases)   
    return new_digit_list


def mult_digit_list(list1,list2,bases):
    new_digit_list = digit_list(int(list1[0])*int(list2[0]),bases)   
    return new_digit_list

number1 = 243
number2 = 189
bases = [10, 16, 8, 2]

digit_list1 = digit_list(number1, bases)
digit_list2 = digit_list(number2, bases)

print "Number 1"
for num, base in zip(digit_list1, bases):
    print "Base %s : %s" % (base, num)
    
print "\nNumber 2"
for num, base in zip(digit_list2, bases):
    print "Base %s : %s" % (base, num)
    
print "\nNumber 1 + Number 2"
combo_list = add_digit_list(digit_list1,digit_list2,bases)
for num, base in zip(combo_list, bases):
    print "Base %s : %s" % (base, num)

print "\nNumber 1 - Number 2"
combo_list = sub_digit_list(digit_list1,digit_list2,bases)
for num, base in zip(combo_list, bases):
    print "Base %s : %s" % (base, num)
    
print "\nNumber 2 - Number 1"
combo_list = sub_digit_list(digit_list2,digit_list1,bases)
for num, base in zip(combo_list, bases):
    print "Base %s : %s" % (base, num)
    
print "\nNumber 1 * Number 2"
combo_list = mult_digit_list(digit_list1,digit_list2,bases)
for num, base in zip(combo_list, bases):
    print "Base %s : %s" % (base, num)