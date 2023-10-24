require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'list_all_books'
require_relative 'list_all_people'
require_relative 'create_person'
require_relative 'add_book'
require_relative 'create_rental'
require_relative 'select_book'
require_relative 'select_person'
require_relative 'rental_date'
require_relative 'create_and_add_rental'
require_relative 'list_rentals'
require_relative 'exit_program'

list_all_books(books)
list_all_people(people)
create_person(people)
add_book(books)
create_rental(books, people, rentals)
select_book(books)
select_person(people)
rental_date
create_and_add_rental(rentals, date, book, person)
list_rentals(rentals)
exit_program
