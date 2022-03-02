require './student'
require './teacher'
require './book'
require './rental'

def list_books

end

def list_people

end

def list_rentals

end

def create_person

end

def create_book

end

def handle_user_input(input)
    case input
    when 1

    when 2

    when 3

    when 4

    when 5

    when 6

    else puts "Please select a valid option"
        print_message()
    end
end

def print_message
    puts "\nPlease choose a option by entring a number
        1 - List all books
        2 - List all people
        3 - Create a book
        4 - Create a rental
        5 - List all rentals for a given person id
        6 - Exit"
input = gets.chomp
handle_user_input(input)
print_message()

end

def main
    puts "Welcome to school library!"
    print_message()
end

main()