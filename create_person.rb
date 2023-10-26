def create_person(people)
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
  person_type = gets.chomp.to_i

  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp.to_s

  case person_type
  when 1
    print 'Has parent permission? [Y/N]: '

    parent_permission = gets.chomp.to_s.upcase == 'Y'

    student = Student.new(age, name, parent_permission: parent_permission)

    people << student

    puts "Person created successfully\n\n"

  when 2
    print 'Specialization: '

    specialization = gets.chomp.to_s

    people << Teacher.new(age, name, specialization: specialization)

    puts "Person created successfully\n\n"

  else
    puts 'Invalid type.'
  end
end
