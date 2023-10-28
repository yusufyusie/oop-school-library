def getpermission(val)
  return true if val == 'y'

  false
end

def createstudent
  print "\Age:"
  age = gets.chomp.to_i
  print "\Name:"
  name = gets.chomp.capitalize
  print "\Has parent Permission? [Y/N]:\t"
  val = gets.chomp.downcase
  permission = getpermission(val)
  student = Student.new(1, age, name, permission)
  APP.addperson(student)
end

def createacher
  print "\Age: "
  age = gets.chomp.to_i
  print "\Name: "
  name = gets.chomp.capitalize
  print "\Specialization: "
  specialization = gets.chomp.capitalize
  teacher = Teacher.new(specialization, age, name)
  APP.addperson(teacher)
end

def createperson
  valid = true
  loop do
    print "\n Do you want to create student (1) or teacher (2)? [input the number]:\t"
    order = gets.chomp
    valid = true
    if order == '1'
      createstudent
    elsif order == '2'
      createacher
    else
      puts "\nInvalid input. Please try again!"
      valid = false
    end
    break if valid
  end
  puts "\Person created successfully!"
end
