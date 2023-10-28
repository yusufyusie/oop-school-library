def savebooks(books)
  file = File.new('./data/books.json', 'w')
rescue Errno::ENOENT
  p 'File not found'
else
  lists = []
  books.each_with_index do |book, i|
    list = { id: i, title: book.title, author: book.author }.to_json
    lists.push(list)
  end
  file.puts lists
  file.close
end

def savepersons(persons)
  file = File.new('./data/people.json', 'w')
rescue Errno::ENOENT
  p 'File not found'
else
  lists = []
  persons.each do |person|
    list = { id: person.id,
             name: person.name,
             age: person.age,
             permission: person.permission || false,
             specialization: person.specialization || '',
             class: person.class }.to_json
    lists.push(list)
  end
  file.puts lists
  file.close
end

def saverentals(rentals)
  file = File.new('./data/rentals.json', 'w')
rescue Errno::ENOENT
  p 'File not found'
else
  lists = []
  rentals.each do |rental|
    list = { name: rental.person.name, age: rental.person.age, title: rental.book.title,
             author: rental.book.author, date: rental.date }.to_json
    lists.push(list)
  end
  file.puts lists
  file.close
end

def preservedata
  books = APP.getbooks
  persons = APP.getpersons
  rentals = APP.getrentals

  savebooks(books) if books

  savepersons(persons) if persons

  return unless rentals

  saverentals(rentals)
end
