require_relative 'app'
require_relative 'menu'

def handle_menu_option(choice, books, people, rentals)
  menu_actions = {
    1 => -> { list_all_books(books) },
    2 => -> { list_all_people(people) },
    3 => -> { create_person(people) },
    4 => -> { add_book(books) },
    5 => -> { create_rental(books, people, rentals) },
    6 => -> { list_rentals(rentals) },
    7 => -> { exit_program }
  }

  action = menu_actions[choice]

  action&.call
end

def main
  books = []
  people = []
  rentals = []

  Menu.display_welcome_message

  loop do
    choice = Menu.display_menu_and_get_choice

    if (1..7).include?(choice)
      handle_menu_option(choice, books, people, rentals)
      break if choice == 7
    else
      puts 'Invalid choice. Please select a valid option (1-7).'
    end
  end
end

main
