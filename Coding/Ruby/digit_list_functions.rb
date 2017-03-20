# Adds, subtracts and multiplies numbers in different number bases and creates a digit-list representation of them
#!/usr/bin/ruby
require 'pry'

def digit_to_list(num)
    digit_list = []
    while (num>0)
        digit_list.push(num%10)
        num = (num - num%10)/10
    end
    
    return digit_list
end

def digits_add(list1, list2)
    sum_list=[]
    carry = 0
    i = 0
    j = 0
    
    while (i<list1.length)&&(j<list2.length)
        sum_list[i] = (list1[i]+list2[j]+carry)%10        
        
        if (list1[i]+list2[j]+carry)>=10
            carry = 1
        else
            carry = 0
        end
        i += 1
        j += 1
    end
    
    while (i<list1.length)
        if carry != 0
            sum_list.push(list1[i]+ carry)
            carry = 0
        else
            sum_list.push(list1[i])
        end
        i += 1
    end
    
    while (j<list2.length)
        if carry != 0
            sum_list.push(list2[j]+ carry)
            carry = 0
        else
            sum_list.push(list2[j])
        end
        j += 1
    end
    
    if carry != 0
        sum_list.push(carry)
    end
    
    return sum_list
end

def digits_sub(list1, list2)
    sub_list=[]
    carry = 0
    i = 0
    j = 0
    check_list1_no_bigger = (list1.length>list2.length)||(list1.length==list2.length)&&(list1[list1.length-1]>list2[list2.length-1])
    
    if (check_list1_no_bigger)
        while (j<list2.length)
            if carry != 0
                sub_list[i] = (list1[i]-list2[j]+carry)    
                carry = 0
            else
                sub_list[i] = (list1[i]-list2[j])
            end
            
            if sub_list[i]<0
                sub_list[i]+=10
                carry = -1
            end
            
            i += 1
            j += 1
        end
    else
        while (i<list1.length)
            if carry != 0
                sub_list[i] = (list2[j]-list1[i]+carry)    
                carry = 0
            else
                sub_list[i] = (list2[j]-list1[i])
            end
            
            if sub_list[i]<0
                sub_list[i]+=10
                carry = -1
            end
            
            i += 1
            j += 1
        end
        is_neg = true
    end
    
    while (i<list1.length)
        if carry != 0
            if (list1[i]+ carry) < 0
                sub_list.push(list1[i]+ carry +10)
                i += 1
            elsif ((list1[i]+ carry) > 0)
                sub_list.push(list1[i]+carry)
                carry = 0
                i += 1
            elsif ((list1[i]+ carry) == 0)&&(i != list1.length-1)
                sub_list.push(list1[i]+carry)
                carry = 0
                i += 1
            end   
        else
            sub_list.push(list1[i])
            i += 1
        end
    end

    while (j<list2.length)
        if carry != 0
            if (list2[j]+ carry) < 0
                sub_list.push(list2[j]+carry+10)
                j += 1
            elsif ((list2[j]+carry) > 0)
                sub_list.push(list2[j]+carry)
                carry = 0
                j += 1 
            elsif ((list2[j]+ carry) == 0)&&(j != list2.length-1)
                sub_list.push(list2[j]+carry)
                carry = 0
                j += 1
            else
                break
            end
        else
            sub_list.push(list2[j])
            j += 1
        end
    end
    
    if(is_neg)
        sub_list[j-1]=sub_list[j-1]*-1
    end
        
    return sub_list
end

num1 = 4
list1 = digit_to_list(num1)

num2 = 510
list2 = digit_to_list(num2)

sum_list = digits_add(list1, list2)
puts "#{sum_list.reverse}"

sub_list = digits_sub(list1, list2)
puts "#{sub_list.reverse}"