require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', permission = 1)
    super(age, name, permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
