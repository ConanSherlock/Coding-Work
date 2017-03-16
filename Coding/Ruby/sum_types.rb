# Different methods of using loops to sum an array of numbers

def recursion(array, sum)
    if array.empty?
        return sum
    else
        sum += array.first
        return recursion(array[1..-1], sum)
    end
end

def for_loop(array)
    sum = 0
    
    for i in array
        sum += i
    end
    
    return sum
end

def while_loop(array)
    sum = 0
    i = 0
    
    while i<array.length
        sum += array[i]
        i += 1
    end
    
    return sum
end

elements = [1,2,3,4,5,6,7,8,9,10]
print "#{recursion(elements, 0)}\n"
print "#{for_loop(elements)}\n"
print "#{while_loop(elements)}\n"
