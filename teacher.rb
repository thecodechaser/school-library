require './person'

class Teacher < Person
  def initialize(age, name, parent_permission, specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
