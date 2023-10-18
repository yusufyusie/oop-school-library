class Person
  @@count = 0

  def self.count
    @@count
  end

  attr_accessor :name, :age
  attr_reader :id

  def initialize(name = 'Unknown', age = nil, parent_permission = true)
    @@count += 1
    @id = @@count
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission == true || of_age?
  end

  private

  def of_age?
    @age.to_i >= 18
  end
end

# Define the Person class and methods here

# Create some Person instances
person1 = Person.new('Alice', 25, true)
person2 = Person.new('Bob', 16, false)

# Check if they can use services
puts "#{person1.name} can use services: #{person1.can_use_services?}" # Should be true
puts "#{person2.name} can use services: #{person2.can_use_services?}" # Should be false

# Check the total count of Person instances
puts "Total Person instances: #{Person.count}" # Should be 2
