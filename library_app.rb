require 'json'
require_relative 'serialize_data'

class LibraryApp
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
  end

  def save_data_to_json
    data = {
      'books' => serialize_data(@books),
      'people' => serialize_data(@people),
      'rentals' => serialize_data(@rentals)
    }

    puts "data: #{data}"

    # File.write('library_data.json', data.to_json)
    File.write('library_data.json', JSON.pretty_generate(data))
    puts 'Data saved to library_data.json.'
  end

  # Add a method to load data from JSON files
  def load_data_from_json
    if File.exist?('library_data.json')
      data = File.read('library_data.json')
      parsed_data = JSON.parse(data)

      @books = parsed_data['books']
      @people = parsed_data['people']
      @rentals = parsed_data['rentals']

      puts 'Data loaded from library_data.json.'
    else
      puts 'No existing data file found.'
    end
  end

  def start
    load_data_from_json
    Menu.display_welcome_message

    at_exit do
      save_data_to_json
    end

    loop do
      choice = Menu.display_menu_and_get_choice

      case choice
      when 1..7
        handle_menu_option(choice, @books, @people, @rentals)
        break if choice == 7
      else
        puts 'Invalid choice. Please select a valid option (1-9).'
      end
    end
  end
end
