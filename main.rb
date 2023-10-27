require_relative 'app'
require_relative 'menu'
require_relative 'handle_menu_options'
require_relative 'library_app'
require_relative 'load_data'
require 'json'

def main
  books = []
  people = []
  rentals = []

  library_app = LibraryApp.new(books, people, rentals)
  library_app.start
  load_data(json_data)
end

main
