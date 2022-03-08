require './student'

describe Student do
  context "When testing the Student class" do
    it "the student class should create a instance of the class" do
      age = "22"
      name = "Bohdan"
      parent_permission = true
      student = Student.new(age, name, parent_permission: parent_permission)
      expect(student.name).to eq name
      expect(student.age).to eq age
      expect(student.parent_permission).to be parent_permission
    end

    it "the student class should create a instance of the class" do
      age = "35"
      name = "Ranjeet"
      parent_permission = false
      student = Student.new(age, name, parent_permission: parent_permission)
      expect(student.name).to eq name
      expect(student.age).to eq age
      expect(student.parent_permission).to be parent_permission
    end
  end
end