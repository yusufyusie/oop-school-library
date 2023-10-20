require_relative 'app'

def main_menu
  puts "\n\nWelcome to the School Library App!\n\n"

  loop do
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
      list_all_books
    when 2
      list_all_people
    when 3
      create_person
    when 4
      add_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      exit_program
    else
      puts 'Invalid choice'
    end

    break if choice == 7
  end
end

main_menu
