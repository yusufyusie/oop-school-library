require './spec_helper'

describe Teacher do
  it 'should have attributes and methods related to a teacher' do
    teacher = Teacher.new(35, 'John', specialization: 'Math')

    expect(teacher.name).to eq('John')
    expect(teacher.age).to eq(35)
    expect(teacher.specialization).to eq('Math')
  end

  it 'should always be able to use services' do
    teacher = Teacher.new(40, 'Alice', specialization: 'English')

    expect(teacher.can_use_services?).to be(true)
  end
end
