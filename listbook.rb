def listbooks
  books = APP.getbooks
  books.each do |book|
    puts("Title : #{book.title}, Author:#{book.author}")
  end
end
