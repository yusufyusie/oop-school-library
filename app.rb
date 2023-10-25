require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

def select_book(books)
  puts 'Select a book from the following list by number:'
  books.each_with_index do |book, index|
    puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
  end

  book_choice = gets.chomp.to_i
  books[book_choice]
end

def select_person(people)
  puts 'Select a person from the following list by number (not id):'
  people.each_with_index do |person, index|
    type = person.is_a?(Teacher) ? 'Teacher' : 'Student'
    puts "#{index}) [#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end

  person_choice = gets.chomp.to_i
  people[person_choice]
end

def rental_date
  print 'Date (YYYY/MM/DD): '
  gets.chomp
end

def create_and_add_rental(rentals, date, book, person)
  rental = Rental.new(date, book, person, person.class.to_s)
  rentals << rental
end
