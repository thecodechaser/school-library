require './person'

describe Person do
  context "When testing the Person class" do
      age = "22"
      name = "Bohdan"
      parent_permission = true
      person = Person.new(age, name, parent_permission: parent_permission)

    it "should validate the age of the person" do
      expect(person.age).to eq age
    end

    it "should validate the name of the person" do
      expect(person.name).to eq name
    end

    it "should validate parent permission for parent" do
      expect(person.parent_permission).to be parent_permission
    end
  end
end