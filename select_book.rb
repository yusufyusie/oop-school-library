def select_book(books)
  puts 'Select a book from the following list by number:'
  books.each_with_index do |book, index|
    puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
  end

  book_choice = gets.chomp.to_i
  books[book_choice]
end
