require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age:, classroom:, name: 'Unknown', parent_permission: true)
    super(name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
    @classroom.add_student(self)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

classroom = Classroom.new('Psychologist 001')
puts classroom.label

student = Student.new(age: 15, name: 'Mateo', parent_permission: true, classroom: classroom)
puts student.classroom
puts student.name
