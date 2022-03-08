require './classrroom'
require './student'

describe Classroom do
  context 'When testing the Classroom class' do
    label = 'Mathematics'
    student = Student.new(12, 'Aang', parent_permission: true)
    classroom = Classroom.new(label)
    classroom.add_student(student)

    it 'should validate the label of the classroom' do
      expect(classroom.label).to eq label
    end

    it 'should validate the student of the classroom' do
      expect(classroom.students[0]).to eq student
    end
  end
end
