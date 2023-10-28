def loadbooks
  files = open('./data/books.json', 'r')
rescue Errno::ENOENT
  p 'Book file not found'
else
  files.each do |file|
    json = JSON.parse(file)
    book = Book.new(json['title'], json['author'])
    APP.addbook(book)
  end
end

def loadpersons
  files = open('./data/people.json', 'r')
rescue Errno::ENOENT
  p 'Person file not found'
else
  files.each do |file|
    json = JSON.parse(file)
    if json['class'] == 'Teacher'
      teacher = Teacher.new(json['specialization'], json['age'], json['name'])
      APP.addperson(teacher)
    else
      student = Student.new(1, json['age'], json['name'], json['permission'])
      APP.addperson(student)
    end
  end
end

def findbook(title, author, books)
  books.find { |book| book.title == title && book.author == author }
end

def findperson(name, age, persons)
  persons.find { |person| person.age == age && person.name == name }
end

def loadrentals
  books = APP.getbooks
  persons = APP.getpersons
  begin
    files = open('./data/rentals.json', 'r')
  rescue Errno::ENOENT
    p 'Rental file not found'
  else
    files.each do |file|
      json = JSON.parse(file)
      book = findbook(json['title'], json['author'], books)
      person = findperson(json['name'], json['age'], persons)
      if book && person
        rental = Rental.new(json['date'], book, person)
        APP.addrental(rental)
      end
    end
  end
end

def loaddata
  loadbooks
  loadpersons
  loadrentals
end
