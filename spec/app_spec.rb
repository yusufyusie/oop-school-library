require_relative './spec_helper.rb'

describe 'Test App class' do
  before(:context) do
    @app = App.new
    @book = Book.new('Asp', 'Yesuf Fenta')
    @person = Person.new(30, 'Yesuf', 1)
    @rental = Rental.new('2022-07-06', @book, @person)
  end

  context 'Testing App class methods' do
    it 'test addperson method' do
      expect(@app.addperson(@person)).to include(@person)
    end

    it 'test getpersons method' do
      expect(@app.getpersons).to eq([@person])
    end

    it 'test getbooks method' do
      expect(@app.getbooks).to eq([])
    end

    it 'test addbook method ' do
      expect(@app.addbook(@book)).to include(@book)
    end

    it 'test addrental method' do
      expect(@app.addrental(@rental)).to include(@rental)
    end

    it 'test getrentals method' do
      expect(@app.getrentals).to eq([@rental])
    end
  end
end
