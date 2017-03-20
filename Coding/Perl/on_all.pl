# Calculates the total sum of an array and gives the other to the user at each sum

my @elements = (1,2,3,4,5);
print "Original array \t\t\t\t@elements\n";
@sums = on_all(\@elements);
print "New array with squared values \t\t@sums\n";


sub on_all(){
    my (@param) = @{$_[0]};
    my $size = @param;

    for($i=0;$i<$size;$i++){
        $param[$i] = square($param[$i]);
    }

    return @param;
}

sub square(){
    my ($num) = @_;
    $square =  $num*$num;
    return $square;
}