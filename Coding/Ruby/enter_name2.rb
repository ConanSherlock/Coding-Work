# Program to get the user's name and welcome them only if they are Bob or Alice
puts 'Hello, please enter your user name: '
name = gets.chomp

if name == "Bob" or name == "Alice"
    puts "Welcome to the program #{name}!"
end