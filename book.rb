class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end

  def to_json
    {
      title: @title,
      author: @author,
    }
  end

  def self.from_json(json_data)
    new(json_data['title'], json_data['author'])
  end
end
