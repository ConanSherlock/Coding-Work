# Rotate list without creating a new one. For example [1,2,3,4,5,6] rotated by two becomes [3,4,5,6,1,2].
#!/usr/bin/ruby
def rotate(array, num)
    return array.rotate(num)
end

def rotate_sub(a, i, j, n)
    return a[0...i] + a[i..j].rotate(n) + a[j+1..-1] if i < j && j < a.size
end

times = 2
list = [1,2,3,4,5,6]
rotated_list = rotate(list, times)

i=0
j=times

while(j<list.count)
    list=rotate_sub(list,i,j,times)
    i += 1
    j += 1
end

puts "#{rotated_list}"
puts "#{list}"