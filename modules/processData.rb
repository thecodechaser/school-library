require 'json'

module ProcessData

  def load_books
    if File.exist?('data/books.json')
      JSON.parse(File.read('data/books.json')).map do |book|
        Book.new(book['title'], book['author'])
      end
    else
      []
    end
  end

  def load_persons
    if File.exist?('data/persons.json')
      JSON.parse(File.read('data/persons.json')).map do |person|
        if person['json_class'] == 'Teacher'
          Teacher.new(person['age'], person['specialization'], person['name'])
        else
          Student.new(person['age'], person['name'], parent_permission: person['parent_permission'])
        end
      end
    else
      []
    end
  end

  def get_person(id)
    @persons.select{|person| person.id ==id}[0]
  end

  def get_book(id)
    @books.select{|book| book.id ==id}[0]
  end

  def load_rentals
    if File.exist?('data/rentals.json')
      JSON.parse(File.read('data/rentals.json')).map do |rental|
        date = rental['date']
        person = get_person(rental['person_id'])
        book = get_book(rental['book_id'])
        Rental.new(date, person, book)
      end
    else
      []
    end
  end

  def save_data
    File.write('data/books.json', JSON.generate(@books)) if @books.any?
    File.write('data/persons.json', JSON.generate(@persons)) if @persons.any?
    File.write('data/rentals.json', JSON.generate(@rentals)) if @rentals.any?
  end

end