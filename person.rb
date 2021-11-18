require './corrector'
require './rental'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new1
    @rentals = []
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end

  public

  def can_use_services?
    true if @age >= 18 || @parent_permission
  end

  def check_age?
    of_age?
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
