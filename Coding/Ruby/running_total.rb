def running_total(eles)
    sum = 0
    print "#{eles.map{|x| sum += x}}\n"
    return sum
end

elements = [1,2,3,4,5,6,7,8,9,10]#[5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
sum = running_total(elements)