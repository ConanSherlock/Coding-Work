sub palindrome(){
    my ($str) = (@_ );
    if (lc $str eq  lc(reverse($str))){
        print "$str is a palindrome\n";
    }
    else{
        print "$str is not a palindrome\n"
    }
}

my $str1 = "Navan";
my $str2 = "Cavan";
my $str3 = "Navvan";
my $str4 = "Cavvan";

&palindrome($str1);
&palindrome($str2);
&palindrome($str3);
&palindrome($str4);