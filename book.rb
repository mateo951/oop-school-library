class Book
  attr_accessor :title, :author

  def initialize(title:, author:)
    @title = title
    @author = author
  end
end

book1 = Book.new(title: 'Harry', author: 'JK')
puts book1.title
