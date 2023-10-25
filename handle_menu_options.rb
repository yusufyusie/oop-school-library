require_relative 'list_all_books'
require_relative 'list_all_people'
require_relative 'create_person'
require_relative 'add_book'
require_relative 'create_rental'
require_relative 'list_rentals'
require_relative 'exit_program'

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
