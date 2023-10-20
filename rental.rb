class Rental
  attr_accessor :date
  attr_reader :book, :person, :type

  def initialize(date, book, person, _type)
    @date = date
    @book = book
    @person = person
    @type = person.class.to_s

    book.rentals << self
    person.rentals << self
  end
end
