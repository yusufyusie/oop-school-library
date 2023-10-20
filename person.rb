require_relative 'nameable'

class Person < Nameable
  @count = 0

  class << self
    attr_reader :count
  end

  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    self.class.increment_count
    @id = self.class.count
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    @parent_permission == true || of_age?
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
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
