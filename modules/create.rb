module Create
  INPUT_MSG = 'Enter an option number here: '.freeze
  ENTER_MSG = 'Press ENTER to continue: '.freeze

  def person_object(id)
    @persons.each do |person|
      return person if person.id == id
    end
    nil
  end

  def create_teacher(name, age)
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(age, specialization, name)
  end

  def create_teacher_input
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher age: '
    age = gets.chomp
    create_teacher(name, age)
  end

  def create_student(name, age)
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

  def create_student_input
    print 'Student name: '
    name = gets.chomp
    print 'Student age: '
    age = gets.chomp
    create_student(name, age)
  end

  def create_person(option)
    case option
    when 1
      @persons.push(create_teacher_input)
      puts 'Teacher created successfully!'
    when 2
      @persons.push(create_student_input)
      puts 'Student created successfully!'
    else
      puts 'Please select a correct option'
      create_person_input
    end
  end

  def create_person_input
    puts "\nPlease choose a option by entring a number
    1 -  Create a teacher
    2 -  Create a student"
    print "\n#{INPUT_MSG}"
    option = gets.chomp.to_i
    create_person(option)
  end

  def create_book(title, author)
    @books.push(Book.new(title, author))
    puts 'Book create successfully'
  end

  def create_book_input
    puts 'Enter book title'
    title = gets.chomp
    puts 'Enter book author'
    author = gets.chomp
    create_book(title, author)
  end

  def create_rental(person_index, book_index, date)
   Rental.new(date, @persons[person_index - 1], @books[book_index - 1])
    puts "Rental created succesfully -
    book: #{@books[book_index - 1].title}, Person: #{@persons[person_index - 1].name}, Date: #{date}"
  end

  def create_rental_input
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
    create_rental(person_index, book_index, date)
  end
end
