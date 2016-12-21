# Finds the max value element in an array
import operator

def max_eles ( eles ):
    k = 0
    for element in eles:
        if element > k:
            k = element
    return  k

def main():
    elements = [5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
    print ''.join([str(max_eles(elements))])
    print ''.join(["Python version ", str(max(enumerate(elements), key=operator.itemgetter(1))[1])])
    
if __name__ == "__main__":
    main()