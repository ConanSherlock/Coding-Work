# Program to concatenate two lists together
def concatenate_lists(list1,list2)
    concat_list = [list1,list2].flatten
    return concat_list
end

list1 = ['a','b','c']
list2 = [1,2,3]
new_list = concatenate_lists(list1,list2)

puts "#{new_list}"