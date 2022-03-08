require './book'
require './student'
require './rental'

describe Rental do
  context 'When testing the Rental class' do
    book_title = 'The Lord of the Horcracs'
    book_author = 'Tolkien'
    book = Book.new(book_title, book_author)
    student = Student.new(12, 'Aang', parent_permission: true)
    date = '21/04/1967'
    rental = Rental.new(date, student, book)

    it 'should validate the date of the rental' do
      expect(rental.date).to eq date
    end

    it 'should validate the student of the rental' do
      expect(rental.person).to eq student
    end

    it 'should validate the book of the rental' do
      expect(rental.book).to eq book
    end
  end
end
