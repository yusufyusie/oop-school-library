require_relative 'selectperson'
require_relative 'selectbook'

def createrental
  book = selectbook
  person = selectperson
  return unless person && book

  print "\n Date (YYYY/MM/DD): "
  date = gets.chomp
  rental = Rental.new(date, book, person)
  APP.addrental(rental)
  puts 'Rental created successfully!'
end
