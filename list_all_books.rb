def list_all_books(books)
    if books.empty?
      puts 'No books available.'
    else
      puts 'List of all books:'
      books.each do |book|
        puts "Title: \"#{book.title}\", Author: #{book.author}"
      end
      puts "\n"
    end
end