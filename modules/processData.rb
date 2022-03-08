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

  def save_data
    File.write('data/books.json', JSON.generate(@books)) if @books.any?
    File.write('data/persons.json', JSON.generate(@persons)) if @persons.any?
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

end