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

    File.open('library_data.json', 'w') do |file|
      file.write(data.to_json)
    end

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
    Menu.display_welcome_message

    at_exit do
      # Save data to JSON when the program exits
      save_data_to_json
    end

    loop do
      choice = Menu.display_menu_and_get_choice

      if (1..7).include?(choice)
        handle_menu_option(choice, @books, @people, @rentals)
        break if choice == 7
      elsif choice == 8
        # Save data to JSON
        save_data_to_json
      elsif choice == 9
        # Load data from JSON
        load_data_from_json
      else
        puts 'Invalid choice. Please select a valid option (1-9).'
      end
    end
  end
end
