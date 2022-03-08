require './person'

describe Person do
  context "When testing the Person class" do
    it "the person class should create a instance of the class" do
      age = "22"
      name = "Bohdan"
      parent_permission = true
      person = Person.new(age, name, parent_permission: parent_permission)
      expect(person.name).to eq name
      expect(person.age).to eq age
      expect(person.parent_permission).to be parent_permission
    end

    it "the person class should create a instance of the class" do
      age = "105"
      name = "Ranjeet"
      parent_permission = true
      person = Person.new(age, name, parent_permission: parent_permission)
      expect(person.name).to eq name
      expect(person.age).to eq age
      expect(person.parent_permission).to be parent_permission
    end
  end
end