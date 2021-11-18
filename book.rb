class Book
  attr_accessor :title, :author

  def initialize(title:, author:)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end

book1 = Book.new(title: 'Harry', author: 'JK')
puts book1.title
