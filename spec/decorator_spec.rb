require_relative '../classroom.rb'

describe Classroom do
  let(:label) { 'Ruby' }
  let(:student) { double('Student') }

  describe '#initialize' do
    it 'sets label' do
      classroom = Classroom.new(label)
      expect(classroom.label).to eq(label)
    end

    it 'sets students' do
      classroom = Classroom.new(label)
      expect(classroom.students).to eq([])
    end
  end
end
