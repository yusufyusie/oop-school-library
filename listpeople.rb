def listpeople
  persons = APP.getpersons
  persons.each do |person|
    puts("[#{person.class}] Name : #{person.name}, ID:#{person.id}, Age: #{person.age}")
  end
end
