require './student'
require './teacher'
require './book'
require './rental'

class App
  def list_books
    if @books.length.zero?
      puts "There's no book, Please add books first"

    else
      @books.each_with_index do |book, index|
        puts "#{index + 1} - Book title: #{book.title}, Book author: #{book.author}"
      end
    end
  end

  def list_people
    if @persons.length.zero?
        puts "There's no book, Please add books first"
      else
        @persons.each_with_index do |person, index|
            if person === Teacher
                puts "[Teacher] #{index+1} - Age: #{person.name}, #{person.age}"
            else 
                puts "[Student] #{index+1} - Age: #{person.name}, #{person.age}"
            end
        end
    end
end

  def list_rentals; end

  def create_teacher(name, age)
    puts "Specialization: "
    specialization =  gets.chomp
    Teacher.new(age, specialization, name)
end

  def create_student(name, age)
    print "Parent permission [y/n]:"
    permission = gets.chomp
    case permission
    when "YES"
        Student.new(age, name, true)
    when "NO"
        Student.new(age, name, false)
    else
        puts "Please select a correct option"
        create_student(name, age)
    end
end

  def create_person
    puts "\nPlease choose a option by entring a number
    1 -  Create a teacher
    2 -  Create a student"
    option = gets.chomp.to_i
    print "name: "
    age = gets.chomp
    print "age: "
    case option
    when 1
        @persoons.push(create_teacher(name, age))
    when 2
        create_student
    else 
        puts "Please select a correct option"
        create_person
    end
end

  def create_book
    puts 'Enter book title'
    title = gets.chomp
    puts 'Enter book author'
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book create successfully'
  end

  def create_rental; end

  def handle_input(option)
    case option
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      puts 'Thank you for using this app'
      exit
    else puts 'Please select a valid option'
         print_message
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
    option = gets.chomp.to_i
    handle_input(option)
    print_message
  end

  def run
    @books = []
    @persons = []
    puts 'Welcome to school library!'
    print_message
  end
end
