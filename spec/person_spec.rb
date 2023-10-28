require_relative '../book'
require_relative '../person'
require_relative '../rental'

describe 'Test Person' do
  before(:context) do
    @person = Person.new(30, 'Yesuf', 1)
  end

  context 'Testing Person class methods' do
    it 'test_correct_name' do
      expect(@person.correct_name).to eq('Yesuf')
    end

    it 'Test add_rental method' do
      book = Book.new('Asp', 'Yesuf Fenta')
      rental = @person.add_rental(book, '2023-07-07')
      expect(@person.rentals[0]).to eq(rental)
    end

    it 'test can_use_services method' do
      expect(@person.can_use_services?).to be true
    end
  end
end
