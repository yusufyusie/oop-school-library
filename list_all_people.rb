def list_all_people(people)
    if people.empty?
      puts 'No people available.'
    else
      people.each do |person|
        type = person.is_a?(Teacher) ? 'Teacher' : 'Student'
        puts "[#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      puts "\n"
    end
  end
