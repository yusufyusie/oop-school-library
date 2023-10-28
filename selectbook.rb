def selectbook
  books = APP.getbooks
  return nil unless books

  puts('Select a book from the following list numbers')
  books.each_with_index do |book, i|
    puts("#{i}) Title : #{book.title}, Author:#{book.author}")
  end
  i = gets.chomp.to_i
  books[i]
end
