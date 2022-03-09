require './book'

describe Book do
  context 'When testing the Book class' do
    title = 'Harry Potter and Merry Poppins'
    author = 'JK Rowling'
    book = Book.new(title, author)

    it 'should validate the title of the book' do
      expect(book.title).to eq title
    end

    it 'should validate the author of the book' do
      expect(book.author).to eq author
    end
  end
end
