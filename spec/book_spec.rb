# rental_spec.rb
require 'rspec'
require_relative 'rental'  # Assuming your Rental class is defined in a separate 'rental.rb' file
require_relative 'book'    # Assuming your Book class is defined in a separate 'book.rb' file
require_relative 'person'  # Assuming your Person class is defined in a separate 'person.rb' file

describe Rental do
  let(:book) { Book.new('Sample Book', 'John Doe') }
  let(:person) { Person.new('Alice') }

  it 'should have a date, book, person, and type' do
    rental = Rental.new('2023-10-26', book, person, 'Type')

    expect(rental.date).to eq('2023-10-26')
    expect(rental.book).to eq(book)
    expect(rental.person).to eq(person)
    expect(rental.type).to eq('Person')  # Adjust this based on how the type is determined in your code
  end
end
