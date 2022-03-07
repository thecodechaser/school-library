module Create
  INPUT_MSG = 'Enter an option number here: '.freeze
  ENTER_MSG = 'Press ENTER to continue: '.freeze

  def person_object(id)
    @persons.each do |person|
      return person if person.id == id
    end
    nil
  end


  def create_teacher
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher age: '
    age = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(age, specialization, name)
  end

  def create_student
    print 'Student name: '
    name = gets.chomp
    print 'Student age: '
    age = gets.chomp
    print 'Parent permission [y/n]:'
    permission = gets.chomp
    case permission
    when 'y'
      Student.new(age, name)
    when 'n'
      Student.new(age, name, parent_permission: false)
    else
      puts 'Please select a correct option'
      create_student
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

  def create_rental
    puts 'Select a book by number '
    list_books
    print_message if @books.length.zero?
    print "\n#{INPUT_MSG}"
    book_index = gets.chomp.to_i
    puts 'Select a person by number: '
    list_persons
    print_message if @persons.length.zero?
    print "\n#{INPUT_MSG}"
    person_index = gets.chomp.to_i
    print 'Enter date: '
    date = gets.chomp
    Rental.new(date, @persons[person_index - 1], @books[book_index - 1])
    puts "Rental created succesfully -
    book: #{@books[book_index - 1].title}, Person: #{@persons[person_index - 1].name}, Date: #{date}"
  end
end
