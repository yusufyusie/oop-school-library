require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

def list_all_books(books)
  if books.empty?
    puts 'No books available.'
  else
    puts 'List of all books:'
    books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
    puts "\n"
  end
end

def list_all_people(people)
  if people.empty?
    puts 'No people available.'
  else
    people.each do |person|
      type = person.is_a?(Teacher) ? 'Teacher' : 'Student'
      puts "[#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts "\n"
  end
end

def create_person(people)
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
  person_type = gets.chomp.to_i

  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp.to_s

  case person_type
  when 1
    print 'Has parent permission? [Y/N]: '

    parent_permission = gets.chomp.to_s.upcase == 'Y'

    student = Student.new(age, name, parent_permission: parent_permission)

    people << student

    puts "Person created successfully\n\n"

  when 2
    print 'Specialization: '

    specialization = gets.chomp.to_s

    people << Teacher.new(age, name, specialization: specialization)

    puts "Person created successfully\n\n"

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
  puts 'Book created successfully.'
end

def create_rental(books, people, rentals)
  book = select_book(books)
  person = select_person(people)

  if book && person
    date = rental_date
    create_and_add_rental(rentals, date, book, person)
    puts 'Rental created successfully'
  else
    puts 'Invalid input, please try again'
  end
end

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

def list_rentals(rentals)
  print 'ID of person: '
  person_id = gets.chomp.to_i

  person_rentals = rentals.select { |r| r.person.id == person_id }

  if person_rentals.empty?
    puts "No rentals found for person with ID #{person_id}"
  else
    puts 'Rentals:'
    person_rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\", Author: #{rental.book.author}"
    end
    puts "\n"
  end
end

def exit_program
  puts 'Thank you for using this app!'
  exit
end
