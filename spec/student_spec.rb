require './spec_helper.rb'

describe Student do
  let(:classroom) { double('Classroom') }

  it 'should have attributes and methods related to a student' do
    student = Student.new(15, 'Alice', parent_permission: true, classroom: classroom)

    expect(student.name).to eq('Alice')
    expect(student.age).to eq(15)
    expect(student.parent_permission).to be(true)
    expect(student.classroom).to eq(classroom)
  end

  it 'should be able to play hooky' do
    student = Student.new(15, 'Alice')

    expect(student.play_hooky).to eq('¯\(ツ)/¯')
  end
end
