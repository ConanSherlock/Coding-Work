def odd_ele(eles)
    print "The odd elements are "
    for i in eles.values_at(* eles.each_index.select {|j| j.odd?})
        print "#{i} "
    end
end

elements = [5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
odd_ele(elements)