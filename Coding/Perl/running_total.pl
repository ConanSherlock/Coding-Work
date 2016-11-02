sub running_total(){
    my (@param)=@{$_[0]};
    my $size=@param;
    my @sums;

    for($i=0;$i<$size;$i++){
        $sums[$i] = $param[$i] + $sums[$i-1];
    }
    return @sums;
}

my @elements = (1,2,3,4,5,6,7,8,9,10);#(5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89);
@sums = &running_total(\@elements);
print "@sums\n";