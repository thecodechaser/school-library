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
      end
end