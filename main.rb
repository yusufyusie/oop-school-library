require_relative 'app'
require_relative 'menu'
require_relative 'handle_menu_options'
require_relative 'library_app'

def main
  books = []
  people = []
  rentals = []

  library_app = LibraryApp.new(books, people, rentals)
  library_app.start
end

main
