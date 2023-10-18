class Person
  @count = 0

  def self.count
    @@count
  end

  attr_accessor :name, :age
  attr_reader :id

  def initialize(name: 'Unknown', age: nil, parent_permission: true)
    @count += 1
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
