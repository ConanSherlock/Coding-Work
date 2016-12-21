# Prints the next 20 leap years
import time

year = int(time.strftime("%Y"))+1
count = 0

while(count < 20):
    if (year%400==0):
        count+=1
        print year
    elif (year%4==0) and (year%100!=0):
        count+=1
        print year
    year+=1