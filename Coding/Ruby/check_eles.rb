# Checks to see if a value is in the array
def check_ele(eles,check)
    if eles.include? check
        print "#{check} is in the list!\n"
    end
end

elements = [5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
value = 513
check_ele(elements,value)