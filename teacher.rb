require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => @id,
      'name' => @name,
      'age' => @age,
      'specialization' => @specialization
    }.to_json(*args)
  end
end
