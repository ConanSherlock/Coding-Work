# Checks to see if a value is in the array
def on_all(eles)
    squares = []
    for i in eles
        squares.push(square(i))
    end
    return squares
end

def square(i)
    square = i*i
    return square
end

elements = [1,2,3,4,5]
puts("The original elements are #{elements}")
new_eles = on_all(elements)
puts("The new array is #{new_eles}")