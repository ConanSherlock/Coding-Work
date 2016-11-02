use List::Util qw(reduce);
sub for_loop(){
    my (@param)=@{$_[0]};
    my $size=@param;
    my $sums=0;

    for($i=0;$i<$size;$i++){
        $sums += $param[$i];
    }
    print "$sums\n";
}

sub while_loop(){
    my (@param)=@{$_[0]};
    my $size=@param;
    my $sums=0;
    my $i = 0;

    while($i<$size){
        $sums += $param[$i];
        $i++;
    }
    print "$sums\n";
}

sub recursion(){
    my (@param)=(@_);  
    $sum = reduce { $a + $b } @param; 
    print "$sum\n";
}

my @elements = (1,2,3,4,5,6,7,8,9,10);#(5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89);
&for_loop(\@elements);
&while_loop(\@elements);
&recursion(@elements);