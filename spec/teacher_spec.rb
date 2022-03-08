require './teacher'

describe Teacher do
  context "When testing the Teacher class" do
    it "the teacher class should create a instance of the class" do
      name = "Bohdan"
      age = "22"
      specialization = "astronomy"
      teacher = Teacher.new(age, specialization, name)
      expect(teacher.name).to eq name
      expect(teacher.age).to eq age
      expect(teacher.specialization).to eq specialization
    end

    it "the teacher class should create a instance of the class" do
      name = "Ranjeet"
      age = "22"
      specialization = "Web development"
      teacher = Teacher.new(age, specialization, name)
      expect(teacher.name).to eq name
      expect(teacher.age).to eq age
      expect(teacher.specialization).to eq specialization
    end
  end
end