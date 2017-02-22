# Adds, subtracts and multiplies numbers in different number bases and creates a digit-list representation of them
#!/usr/bin/ruby
require 'pry'

def digit_list(number, bases)
    digit_list=[]
    
    bases.each do |b| 
        digit_list.push(number.to_s(b))
    end
    
    return digit_list
end

def digit_list_alt(number, bases)
    digit_list=[]
    
    digit_list.push(bases.map {|b| number.to_s(b)})
    
    return digit_list
end

def add_digit_list(list1,list2,bases)
    digit_list = digit_list(list1[0].to_i+list2[0].to_i,bases)
    
    return digit_list
end

def sub_digit_list(list1,list2,bases)
    digit_list = digit_list(list1[0].to_i-list2[0].to_i,bases)
    
    return digit_list
end

def mult_digit_list(list1,list2,bases)
    digit_list = digit_list(list1[0].to_i*list2[0].to_i,bases)
    
    return digit_list    
end

bases = [10,16,8,2]

number1 = 243
number2 = 189

digit_list1 = digit_list(number1, bases)
digit_list2 = digit_list(number2, bases)

puts "\nNumber 1"
digit_list1.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end

puts "\nNumber 2"
digit_list2.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end

puts "\nNumber 1 + Number 2"
comb_list = add_digit_list(digit_list1,digit_list2,bases)

comb_list.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end

puts "\nNumber 1 - Number 2"
comb_list = sub_digit_list(digit_list1,digit_list2,bases)

comb_list.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end

puts "\nNumber 2 - Number 1"
comb_list = sub_digit_list(digit_list2,digit_list1,bases)

comb_list.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end

puts "\nNumber 1 * Number 2"
comb_list = mult_digit_list(digit_list1,digit_list2,bases)

comb_list.zip(bases).each do |num, base|
    puts "Base #{base}: #{num}"
end