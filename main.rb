require './student'
require './teacher'
require './book'
require './rental'

def print_message
    puts "Please choose a option by entring a number\n
        1 - List all books\n
        2 - List all people\n
        3 - Create a book\n
        4 - Create a rental
        5 - List all rentals for a given person id\n
        6 - Exit"    
end

def main
    puts "Welcome to school library!"
    print_message()
end

main()