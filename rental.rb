class Rental
    attr_accessor :date
    attr_reader :book, :person

    def initialize(date, person, book)
        @date = date
        @person = person
        person.rentals << self
        @book = book
        book.rental << self

    end

    def book=(bookrental)
        @book= bookrental
        bookrental.rentals.push(self) unless bookrental.rental.include?(self)
    end

    def person=(personrental)
        @person = personrental
        personrental.rentals.push(self) unless personrental.rental.include?(self)
end