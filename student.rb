require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
  end

  def classroom=(studentclass)
    @classroom = studentclass
    studentclass.students.push(self) unless studentclass.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
