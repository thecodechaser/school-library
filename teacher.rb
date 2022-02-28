require "./person.rb"

class Teacher < person

    def initialize(name, age, parent_permission, specialization)
        super(name, age, parent_permission)
        @specialization = specialization
    end

end
