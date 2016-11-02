import operator

for num in range(2,10000):
    flag = 0
    
    if operator.gt(num/2,2): 
        for i in range(2,(num/2)+1):
            if (num%i == 0):
                flag=1;
                break;
        
    if (flag == 0):
        print str(num) + " is a prime number"
    num+=1