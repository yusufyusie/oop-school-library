require_relative '../student'

describe 'Test Student' do
  before(:context) do
    @student = Student.new('Ruby', 15, 'Yesuf', 1)
  end

  context 'Testing student class methods' do
    it 'Test classroom' do
      expect(@student.classroom).to eq('Ruby')
    end

    it 'Test play_hooky' do
      expect(@student.play_hooky).to eq('¯\\_(ツ)_/¯')
    end
  end
end
