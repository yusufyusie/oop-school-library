require_relative './spec_helper.rb'

describe 'Test Teacher class' do
  before(:context) do
    @teacher = Teacher.new('Ruby', 30, 'Victor', permission: true)
  end

  context 'Testing Teacher class methods' do
    it 'test specialization accessor' do
      expect(@teacher.specialization).to eq('Ruby')
    end

    it 'Test can_use_services' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
