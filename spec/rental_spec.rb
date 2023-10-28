require_relative './spec_helper.rb'

describe 'Test Rental class' do
  before(:context) do
    @book = Book.new('Asp', 'Yesuf Fenta')
    @person = Person.new(30, 'Victor', 1)
    @rental = Rental.new('2023-07-07', @book, @person)
  end

  context 'Testing Rental class methods' do
    it 'test date instance' do
      expect(@rental.date).to eq('2023-07-07')
    end

    it 'Test book instance' do
      expect(@rental.book).to eq(@book)
    end

    it 'Test person instance' do
      expect(@rental.person).to eq(@person)
    end
  end
end
