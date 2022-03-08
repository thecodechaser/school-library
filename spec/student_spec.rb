require './student'

describe Student do
  context 'When testing the Student class' do
    age = '35'
    name = 'Ranjeet'
    parent_permission = true
    student = Student.new(age, name, parent_permission: parent_permission)

    it 'should validate the age of the student' do
      expect(student.age).to eq age
    end

    it 'should validate the name of the student' do
      expect(student.name).to eq name
    end

    it 'should return parent permission for student' do
      expect(student.parent_permission).to be parent_permission
    end
  end
end
