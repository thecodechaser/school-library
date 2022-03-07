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

     
end