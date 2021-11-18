class Rental
  attr_accessor :date

  def initialize(date:)
    @date = date
  end
end

date1 = Rental.new(date: '01042021')
puts date1.date