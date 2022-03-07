require './student'
require './teacher'
require './book'
require './rental'
require './create'

class Main
  include Create
  def initialize
    @books = []
    @persons = []
  end

  def enter_msg
    print "\n#{ENTER_MSG}"
    gets
  end

  def create_person
    puts "\nPlease choose a option by entring a number
    1 -  Create a teacher
    2 -  Create a student"
    print "\n#{INPUT_MSG}"
    option = gets.chomp.to_i
    case option
    when 1
      @persons.push(create_teacher)
      puts 'Teacher created successfully!'
    when 2
      @persons.push(create_student)
      puts 'Student created successfully!'
    else
      puts 'Please select a correct option'
      create_person
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
    print "\n#{INPUT_MSG}"
    option = gets.chomp.to_i
    handle_input(option)
    print_message
  end

  # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength

  def handle_input(option)
    case option
    when 1
      list_books
      enter_msg
    when 2
      list_persons
      enter_msg
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
      enter_msg
    when 7
      puts 'Thank you for using this app - Written by Ranjeet Singh'
      exit
    else puts 'Please select a valid option'
         print_message
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength

  def main
    puts 'Welcome to school library! - Ranjeet Singh'
    print_message
  end
end

Main.new.main
