require './student'
require './teacher'
require './book'
require './rental'

class App
    
    
    def list_books
    
    end
    
    def list_people
    
    end
    
    def list_rentals
    
    end

    def create_teacher

    end

    def create_student
    end
    
    def create_person
    
    end
    
    def create_book
    
    end
    
    def create_rental
    
    end
    
    def handle_user_input(input)
        case input
        when 1
            list_books()
        when 2
            list_people()
        when 3
            create_person()
        when 4
            create_book()
        when 5
            create_rental()
        when 6
            list_rentals()
        when 7 
            puts "Thank you for using this app"
            exit
        else puts "Please select a valid option"
            print_message()
        end
    end
    
    def print_message
        puts "\nPlease choose a option by entring a number
            1 - List all books
            2 - List all people
            3 - Create a person
            4 - Create a book
            5 - Create a rental
            6 - List all rentals for a given person id
            7 - Exit"
    input = gets.chomp.to_i
    handle_user_input(input)
    print_message()
    end

    def run
        @books = []
        @person = []
        puts "Welcome to school library!"
    print_message()
    end

end