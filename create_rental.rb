def create_rental(books, people, rentals)
    book = select_book(books)
    person = select_person(people)
  
    if book && person
      date = rental_date
      create_and_add_rental(rentals, date, book, person)
      puts 'Rental created successfully'
    else
      puts 'Invalid input, please try again'
    end
end