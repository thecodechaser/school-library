class Rental
    attr_accessor :date

    def initialize(date)
        @date = date
    end

    def book=(bookrental)
        @rental= bookrental
        bookrental.rentals.push(self) unless bookrental.rental.include?(self)
    end
end