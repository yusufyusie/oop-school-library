require './spec_helper'

describe Person do
  it 'should have a name, age, and rentals' do
    person = Person.new(25, 'Alice')

    expect(person.name).to eq('Alice')
    expect(person.age).to eq(25)
    expect(person.rentals).to be_an(Array)
    expect(person.rentals).to be_empty
  end

  it 'should have an ID between 1 and 100' do
    person = Person.new(25, 'Alice')

    expect(person.id).to be_between(1, 100)
  end

  it 'should increment the count of people' do
    initial_count = Person.count
    person = Person.new(30, 'Bob')

    expect(Person.count).to eq(initial_count + 1)
  end
end
