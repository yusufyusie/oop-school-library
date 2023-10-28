def createbook
  print "\Title: "
  title = gets.chomp.capitalize
  print "\Author: "
  author = gets.chomp.capitalize
  book = Book.new(title, author)
  APP.addbook(book)
  puts "\Book created successfully!"
end
