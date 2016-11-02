# Program to get a user's name and welcome them
print "Hello user please enter your name: ";
chomp($name=<>);

if(($name eq 'Bob')||($name eq 'Alice')){
print "Welcome to the program $name!";
}
