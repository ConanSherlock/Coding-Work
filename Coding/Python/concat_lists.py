# Program to concatenate two lists together
def concatenate_lists ( list1, list2 ):
    all_lists = sum([list1, list2], [])
    return all_lists

list1 = ['a','b','c']
list2 = [1,2,3]
new_list = concatenate_lists ( list1, list2 )
print new_list