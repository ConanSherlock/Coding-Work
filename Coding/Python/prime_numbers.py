for num in range(2,100):
    flag = 0
    
    for i in range(2,(num/2)+1):
        if (num%i == 0):
            flag=1;
            break;
        
    if (flag == 0):
        print str(num) + " is a prime number"
    num+=1