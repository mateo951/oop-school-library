class Classroom
  attr_accessor :label
  def initialize(label)
    @label = label
  end
end

classroom1 = Classroom.new("Label test")
puts classroom1.label