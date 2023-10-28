require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def addperson(person)
    @persons << person
  end

  def getpersons
    @persons
  end

  def addbook(book)
    @books << book
  end

  def getbooks
    @books
  end

  def addrental(rental)
    @rentals << rental
  end

  def getrentals
    @rentals
  end
end
