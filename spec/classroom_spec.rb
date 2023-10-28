require_relative './spec_helper.rb'

describe 'Test Classroom class' do
  before(:context) do
    @classroom = Classroom.new('Ruby')
    @student = Student.new('Ruby', 15, 'Yesuf', 1)
  end

  context 'Testing Classroom class methods' do
    it 'test label instance' do
      expect('Ruby').to eq(@classroom.label)
    end

    it 'test students instance' do
      expect(@classroom.students).to eq([])
    end

    it 'test add_student method' do
      @classroom.add_student(@student)
      expect([@student]).to eq(@classroom.students)
      expect(@classroom).to eq(@student.classroom)
    end
  end
end
