def for_loop( eles ):
    sum = 0
    
    for n in eles:
        sum += n
    return sum
    
def while_loop( eles, size ):
    sum = 0
    i = 0
    
    while(i<size):
        sum += eles[i]
        i+=1
    return sum
    
def recursion( eles ):
    if len(eles) == 1:
        return eles[0]
    elif len(eles) == 2:
        return recursion( [eles[0] + eles[1]] )
    else:
        return recursion([eles[0] + eles[1]] +  eles[2:])

elements = [1,2,3,4,5,6,7,8,9,10]#[5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
print for_loop( elements )
print while_loop( elements, len(elements))
print recursion( elements )