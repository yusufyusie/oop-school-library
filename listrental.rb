def listrental
  rentals = APP.getrentals
  return unless rentals

  puts('Enter Id of Person')
  id = gets.chomp.to_i
  searches = rentals.select { |rental| rental.person.id == id }
  puts("\nRentals:")
  searches.each do |rental|
    print("\nDate : #{rental.date}, Book : #{rental.book.title}, by #{rental.book.author}")
  end
end
