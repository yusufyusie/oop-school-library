require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'


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
