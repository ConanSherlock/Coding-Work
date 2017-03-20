# Rotate list without creating a new one. For example [1,2,3,4,5,6] rotated by two becomes [3,4,5,6,1,2].
#!/usr/bin/python
def merged_and_sorted(array_1, array_2):
    i = 0
    k = 0
    merged_array = []
    while i < len(array_1):
        while k < len(array_2) and array_1[i] > array_2[k]:
            merged_array.append(array_2[k])                      
            k += 1                                          
        merged_array.append(array_1[i])
        i += 1                                              
    return merged_array

list1 = [1,4,6]
list2 = [2,3,5]

new_list = merged_and_sorted(list1,list2)

print new_list