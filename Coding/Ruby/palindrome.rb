# Checks if a word is a palindrome

def palindrome(str)
    if str.downcase == str.reverse.downcase
        print "#{str} is a palindrome\n"
    else
        print "#{str} is not a palindrome\n"
    end
end

str1 = "Navan"
str2 = "Cavan"
str3 = "Navvan"
str4 = "Cavvan"

palindrome(str1)
palindrome(str2)
palindrome(str3)
palindrome(str4)