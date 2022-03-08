require './rental'

# rubocop:disable Style/ClassVars
class Book
  @@id = 1
  attr_accessor :title, :author
  attr_reader :rentals, :id

  def initialize(title, author)
    @title = title
    @author = author
    @id = @@id
    @@id += 1
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, person, self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'title' => @title,
      'author' => @author
    }.to_json(*args)
  end
end
# rubocop:enable Style/ClassVars
