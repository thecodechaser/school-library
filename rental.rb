class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'date' => @date,
      'person_id' => @person.id,
      'book_id' => @book.id
    }.to_json(*args)
  end
end
