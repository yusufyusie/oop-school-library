require_relative 'nameable'

class Person < Nameable
  @count = 0

  class << self
    attr_reader :count
  end

  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    self.class.increment_count
    @id = self.class.count
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission == true || of_age?
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age.to_i >= 18
  end

  class << self
    def increment_count
      @count ||= 0
      @count += 1
    end
  end
end
