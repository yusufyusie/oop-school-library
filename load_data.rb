require 'json'

# Load the JSON file
json_data = File.read('./library_data.json')
json_data = JSON.parse(json_data)

# Define methods to display the JSON data
def load_books(json_data)
  puts 'Books:'
  json_data['books'].each do |book|
    puts "  Title: #{book['title']}"
    puts "  Author: #{book['author']}"
  end
end

def load_people(json_data)
  puts 'People:'
  json_data['people'].each do |person|
    puts "  Name: #{person['name']}"
    puts "  Age: #{person['age']}"
    puts "  Parent permission: #{person['parent_permission']}"
  end
end

def load_rentals(json_data)
  puts 'Rentals:'
  json_data['rentals'].each do |rental|
    puts "  Date: #{rental['date']}"
    puts "  Book: #{rental['book']}"
    puts "  Person: #{rental['person']}"
    puts "  Type: #{rental['type']}"
  end
end

# Define a method to load all of the JSON data
def load_data(json_data)
  load_books(json_data)
  load_people(json_data)
  load_rentals(json_data)
end

# Call the load_data method to load and display the JSON data
load_data(json_data)
