# menu.rb

module Menu
  def self.display_welcome_message
    puts "\nWelcome to the School Library\n\n"
  end

  def self.display_menu_and_get_choice
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given book title'
    puts '7 - Exit'
    print 'Enter your choice: '
    gets.chomp.to_i
  end
end
