class Rental
    attr_accessor :date
    attr_reader :book, :person

    def initialize(date)
        @date = date
    end

    def book=(bookrental)
        @book= bookrental
        bookrental.rentals.push(self) unless bookrental.rental.include?(self)
    end

    def person=(personrental)
        @person = personrental
        personrental.rentals.push(self) unless personrental.rental.include?(self)
end