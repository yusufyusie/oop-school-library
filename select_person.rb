def select_person(people)
    puts 'Select a person from the following list by number (not id):'
    people.each_with_index do |person, index|
      type = person.is_a?(Teacher) ? 'Teacher' : 'Student'
      puts "#{index}) [#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  
    person_choice = gets.chomp.to_i
    people[person_choice]
end