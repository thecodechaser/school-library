module Display

    def list_books
        if @books.length.zero?
          puts "There's no book, Please add a book first"
        else
          @books.each_with_index do |book, index|
            puts "#{index + 1} - Book title: #{book.title}, Book author: #{book.author}"
          end
        end
      end
    
      def list_persons
        if @persons.length.zero?
          puts "There's no person, Please add a person first"
        else
          @persons.each_with_index do |person, index|
            if person.is_a?(Teacher)
              puts "[Teacher] #{index + 1} - ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
            else
              puts "[Student] #{index + 1} - ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
            end
          end
        end
      end

      def list_rentals
        puts 'Select a person by ID: '
        list_persons
        print_message if @persons.length.zero?
        id = gets.chomp.to_i
        person = person_object(id)
        if person.nil?
          puts 'Wrong input, Please type correct ID'
          return
        end
        rentals = person.rentals
        if rentals.length.zero?
          puts 'No rentals for this person, Please add a rental first'
        else
          rentals.each_with_index do |rent, index|
            puts "#{index + 1} - Date: #{rent.date}, Book: #{rent.book.title} by #{rent.person.name}"
          end
        end
      end
end