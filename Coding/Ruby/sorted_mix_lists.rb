# Script to concatenate two sorted lists together with the new list also being a sorted list
#!/usr/bin/ruby
def merged_and_sorted(array_1, array_2)
    i = 0
    k = 0
    merged_array = []
    while i < array_1.count
        while k < array_2.count && array_1[i] > array_2[k]
            merged_array << array_2[k]                      
            k += 1                                          
        end
        merged_array << array_1[i]
        i += 1                                              
    end
    print merged_array.inspect
 end

list1 = [1,4,6]
list2 = [2,3,5]
new_list = merged_and_sorted(list1,list2)

puts "#{new_list}"