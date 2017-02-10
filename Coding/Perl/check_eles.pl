# Checks if a certain numerical element is in the array
use List::Util qw( min max );
my @elements = (5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89);
my $value = 513;
check_ele(\@elements, $value);
my $check_perl = grep(/^$value$/,@elements);
print "Built in perl version is $check_perl\n"; #1 if true 0 if false

sub check_ele(){
    my (@param)=@{$_[0]};
    my $check = $_[1];
    my $size=@param;
    my $flag=0;
    for($i=0;$i<$size;$i++){
        if($param[$i]==$check){
            print "$check is in the list!\n";
            $flag=1;
        }
    }
    if ($flag==0){
        print "$check is not in the list!\n";
    }
}