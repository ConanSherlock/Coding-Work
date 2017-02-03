# Script to mix two lists together with the mixed list alterenating elements between the lists
import itertools

def mix_lists ( list1, list2 ):
    all_lists = [None]*(len(list1)+len(list2))
    all_lists[::2] = list1
    all_lists[1::2] = list2
    
    # alt_list = list(itertools.chain.from_iterable(zip(list1,list2)))  Alternate way to do it
    
    return all_lists

list1 = ['a','b','c']
list2 = [1,2,3]
new_list = mix_lists ( list1, list2 )
print new_list