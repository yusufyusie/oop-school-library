def selectperson
  persons = APP.getpersons
  return nil unless persons

  puts('Select a book from the following list numbers')
  persons.each_with_index do |person, i|
    puts("#{i}) Name : #{person.name}, ID:#{person.id}, Age: #{person.age}")
  end
  i = gets.chomp.to_i
  persons[i]
end
