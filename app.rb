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
      puts "Title: \"#{book.title}\", Author: #{book.author}"
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
      puts "[#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
end

def create_person(people)
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
  person_type = gets.chomp.to_i

  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp.to_s

  if person_type == 1
    print 'Has parent permission? [Y/N]: '

    parent_permission = gets.chomp.to_s.upcase == 'Y'

    student = Student.new(age, name, parent_permission: parent_permission)

    people << student

    puts "Person #{name}(#{age}) created successfully\n\n"

  elsif person_type == 2
    print 'Specialization: '

    specialization = gets.chomp.to_s

    people << Teacher.new(age, name, specialization: specialization)

    puts "Person #{name}(#{age}) with specialization in #{specialization} created successfully\n\n"

    people << Teacher.new(age, name)
  else
    puts 'Invalid type.'
  end
end

def add_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books << Book.new(title, author)
  puts "Book '#{title}' by #{author} added successfully."
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
