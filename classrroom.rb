class Classroom
    attr_accessor :label
    attr_reader :Students

    def initialize(label)
        @label = label
        @Students = []
    end

    def add_student(student)
        @student.push(student)
        student.classroom = self
    end
    
end