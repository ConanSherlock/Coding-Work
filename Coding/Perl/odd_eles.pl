sub odd_ele(){
    my (@param)=@{$_[0]};
    my $size=@param;
    print "The odd numbers are ";
    for($i=0;$i<$size;$i++){
        if($i & 1){
            print "$param[$i] ";
        }
    }
}

# use List::Util qw( min max );
my @elements = (5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89);
&odd_ele(\@elements);