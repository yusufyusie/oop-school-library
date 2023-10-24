def create_and_add_rental(rentals, date, book, person)
    rental = Rental.new(date, book, person, person.class.to_s)
    rentals << rental
end