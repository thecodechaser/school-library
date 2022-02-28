require './person'

class Student < Person
  def initialize(age, name, parent_permission, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
