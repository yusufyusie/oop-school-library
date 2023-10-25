def list_rentals(rentals)
    print 'ID of person: '
    person_id = gets.chomp.to_i

    person_rentals = rentals.select { |r| r.person.id == person_id }

    if person_rentals.empty?
      puts "No rentals found for person with ID #{person_id}"
    else
      puts 'Rentals:'
      person_rentals.each do |rental|
        puts "Date: #{rental.date}, Book \"#{rental.book.title}\", Author: #{rental.book.author}"
      end
      puts "\n"
    end
end
