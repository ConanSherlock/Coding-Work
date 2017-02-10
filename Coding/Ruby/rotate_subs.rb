# Can rotate parts of a list without rotating the whole list
#!/usr/bin/ruby
def rotate_sub(a, i, j, n)
    return a[0...i] + a[i..j].rotate(n) + a[j+1..-1] if i < j && j < a.size
end

times = 1
list = [1,2,3,4,5,6]

i=0
j=2

list=rotate_sub(list,i,j,times)

puts "#{list}"