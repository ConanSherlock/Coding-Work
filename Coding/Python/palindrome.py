def is_palindrome(string):
    if(string.upper() == string[-1::-1].upper()):
        print ''.join([string,": is a palindrome\n"])
    else:
        print ''.join([string,": is not a palindrome\n"])

str1 = "Navan"
str2 = "Cavan"
str3 = "Navvan"
str4 = "Cavvan"

is_palindrome(str1)
is_palindrome(str2)
is_palindrome(str3)
is_palindrome(str4)