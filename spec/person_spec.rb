require './person'
require './book'

describe Person do
  context 'When testing the Person class' do
    age = '22'
    name = 'ranjeetsingh'
    parent_permission = true
    person = Person.new(age, name, parent_permission: parent_permission)

    book = Book.new("The lord of the rings", "Mike stephen")
    date = "20/13/2022"

    it 'should validate the age of the person' do
      expect(person.age).to eq age
    end

    it 'should validate the name of the person' do
      expect(person.name).to eq name
    end

    it 'should validate parent permission for parent' do
      expect(person.parent_permission).to be parent_permission
    end

    it 'should validate capitalized name and trim to 10 length' do
      person.validate_name
     expect(person.name). to eq 'Ranjeetsin'
     end

     it 'should validate the rental of the person' do
      person.add_rental(book, date)
      expect(person.rentals.length).to eq 1
    end
  end
  
end
