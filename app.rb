require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'

def list_all_books(books)
  if books.empty?
    puts 'No books available.'
  else
    puts 'List of all books:'
    books.each do |book|
      puts "Title: #{book.title} Author: #{book.author}"
    end
  end
end

def list_all_people(people)
  if people.empty?
    puts 'No people available.'
  else
    puts 'List of all people:'
    people.each do |person|
      type = person.is_a?(Teacher) ? 'Teacher' : 'Student'
      puts "Name: #{person.name}"
      puts "Age: #{person.age}"
      puts "Type: #{type}"
    end
  end
end

def create_person(people)
  puts 'Please enter the name of the person: '
  name = gets.chomp

  age = nil
  loop do
    puts 'Please enter the age of the person (must be an integer): '
    age = gets.chomp
    break if age.match?(/^\d+$/)

    puts 'Age must be a valid integer.'
  end

  age = age.to_i # Convert age to an integer

  puts "Please enter the type of person: For student type 's' or for teacher type 't':"
  type = gets.chomp

  if type == 's'
    people << Student.new(age, name)
  elsif type == 't'
    people << Teacher.new(age, name)
  else
    puts 'Invalid type.'
  end
end

def add_book(books)
  puts 'Please enter the title of the book: '
  title = gets.chomp
  puts 'Please enter the author of the book: '
  author = gets.chomp
  books << Book.new(title, author)
end

def create_rental(books, people, rentals)
  puts 'Create a rental'
  puts 'Please enter the name of the person:'
  person_name = gets.chomp
  puts 'Please enter the title of the book:'
  book_title = gets.chomp
  puts 'Please enter the date the book was checked out (YYYY-MM-DD):'
  date = gets.chomp

  person = people.find { |p| p.name == person_name }
  book = books.find { |b| b.title == book_title }

  if person && book
    rentals << Rental.new(date, book, person)
    puts 'Rental created successfully.'
  else
    puts 'Person or book not found. Rental creation failed.'
  end
end

def list_rentals(rentals)
  puts 'List all rentals for a given person'
  puts 'Please enter the name of the person:'
  person_name = gets.chomp
  person_rentals = rentals.select { |r| r.person.name == person_name }

  if person_rentals.empty?
    puts "No rentals found for #{person_name}."
  else
    puts "Rentals for #{person_name}:"
    person_rentals.each do |rental|
      puts "Title: #{rental.book.title} Date: #{rental.date}"
    end
  end
end

def exit_program
  puts 'Exiting program...'
  exit
end
