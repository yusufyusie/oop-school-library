require './spec_helper' # Adjust the file path as needed

describe Classroom do
  let(:classroom) { Classroom.new('Class A') }
  let(:student) { double('Student') }

  it 'should have a label and an empty list of students' do
    expect(classroom.label).to eq('Class A')
    expect(classroom.students).to be_an(Array)
    expect(classroom.students).to be_empty
  end
end
