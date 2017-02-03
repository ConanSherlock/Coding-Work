# Script to mix two lists together with the mixed list alterenating elements between the lists
def mix_lists(list1,list2)
    concat_list = list1.zip(list2).flatten.compact
    return concat_list
end

list1 = ['a','b','c']
list2 = [1,2,3]
new_list = mix_lists(list1,list2)

puts "#{new_list}"