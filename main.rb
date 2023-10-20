require_relative 'app'

def main
  books = [] # Initialize arrays for books, people, and rentals
  people = []
  rentals = []

  puts "\n" * 2
  puts 'Welcome to the School Library App!'
  puts "\n" * 2


  loop do
    puts ''
    puts 'Please choose an option by entering a number:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rentals for a given person'
    puts '7. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
      list_all_books(books)
    when 2
      list_all_people(people)
    when 3
      create_person(people)
    when 4
      add_book(books)
    when 5
      create_rental(books, people, rentals)
    when 6
      list_rentals(rentals)
    when 7
      exit_program
    else
      puts 'Invalid choice'
    end

    # Option to quit the app
    break if choice == 7
  end
end

main
